-- =============================================
-- Query 1: Compare two groups
--
-- Author:  jonnykong@cs.ucla.edu
-- Date:    2019-11-12
-- =============================================



-- Get comparison group
CREATE OR REPLACE FUNCTION get_comparison_group(d1 DATE, d2 DATE)
RETURNS TABLE (
    pid CHARACTER(10),
    vid CHARACTER(20),
    vote CHARACTER varying(50),
    party CHARACTER varying(50)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT  persons.id AS pid, votes.id AS vid, person_votes.vote AS vote, person_roles.party
    FROM    persons, person_votes, votes, person_roles
    WHERE   persons.id = person_votes.person_id AND
            person_votes.vote_id = votes.id AND
            persons.id = person_roles.person_id AND person_roles.start_date <= votes.date AND votes.date <= person_roles.end_date AND
            person_roles.end_date >= d1 AND person_roles.start_date <= d2 AND
            votes.date >= d1 AND votes.date <= d2 AND
            person_roles.type = 'sen';
END; $$
LANGUAGE 'plpgsql';


-- Get party majority
CREATE OR REPLACE FUNCTION get_party_majority(pty CHARACTER varying(50), d1 DATE, d2 DATE)
RETURNS TABLE (
    vid CHARACTER(20),
    vote CHARACTER varying(50)
)
AS $$
BEGIN
    RETURN QUERY
    WITH tmp AS (
        SELECT votes.id AS _vid, person_roles.party AS _party,
            COUNT(*) FILTER (WHERE person_votes.vote = 'Yea') as _cnt_yea,
            COUNT(*) FILTER (WHERE person_votes.vote = 'Nay') as _cnt_nay,
            COUNT(*) FILTER (WHERE person_votes.vote = 'Not Voting') as _cnt_not_voting
        FROM persons, person_votes, votes, person_roles
        WHERE persons.id = person_votes.person_id AND
            person_votes.vote_id = votes.id AND
            persons.id = person_roles.person_id AND person_roles.start_date <= votes.date AND votes.date <= person_roles.end_date AND
            person_roles.party = pty AND
            votes.date >= d1 AND votes.date <= d2 AND
            votes.id LIKE 's%'  -- Senate
        GROUP BY _vid, _party
        ORDER BY _vid
    )
    SELECT tmp._vid AS vid,
        (CASE
            WHEN _cnt_yea >= _cnt_nay AND _cnt_yea >= _cnt_not_voting THEN 'Yea'::VARCHAR(50)
            WHEN _cnt_nay >= _cnt_yea AND _cnt_nay >= _cnt_not_voting THEN 'Nay'::VARCHAR(50)
            ELSE 'Not Voting'::VARCHAR(50)
        END) AS vote
    FROM tmp;
END; $$
LANGUAGE 'plpgsql';


-- 
CREATE OR REPLACE FUNCTION q1(pty CHARACTER varying(50), d1 DATE, d2 DATE)
RETURNS TABLE (
    prec DECIMAL,
    pid CHARACTER(10),
    party CHARACTER varying(50)
)
AS $$
BEGIN
    RETURN QUERY
    WITH compgroup AS (
        SELECT * FROM get_comparison_group(d1, d2)
    ), targetgroup AS (
        SELECT * FROM get_party_majority('Democrat', d1, d2)
    )
    SELECT  CAST(COUNT(CASE WHEN compgroup.vote=targetgroup.vote THEN 1 END) AS DECIMAL) / COUNT(*) AS perc,
            compgroup.pid AS pid, compgroup.party AS party
    FROM    compgroup, targetgroup
    WHERE   compgroup.vid = targetgroup.vid
    GROUP BY compgroup.pid, compgroup.party
    ORDER BY perc;
END; $$
LANGUAGE 'plpgsql';