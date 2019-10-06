# iCheck

### 1) Existing iCheck interface

Interactions:

1. Rank view

   On page load, server send precomputed results `prefix_sums` to client:

   ```
   "prefix_sums": {
     "person_1_id": [
       [ day1, num_agree, num_total ],
       [ day2, num_agree, num_total ],
       ...
     ],
     "person_2_id": [
       [ day1, num_agree, num_total ],
       [ day2, num_agree, num_total ],
       ...
     ],
     ...
   }
   ```

   On brush move, for each person, compute `#agree`, `#total` within brush date range from `prefix_sums`, then compute `#agree / #total`.

2. Trend view

   Pre-computed by client from `prefix_sums`. This interaction does not change.

3. Vote over time periods

   On page load, server sends precomputed results `vote_counts` to client:

   ```
   "vote_counts": [
     [ day1: num_vote_day1 ],
     [ day2: num_vote_day2 ],
    	...
   ]
   ```

   This interaction does not change.

4. Table stats

   Results can be derived from rank view results.

### 2) Download iCheck data, recreate interface

* Data is scraped using [this project](https://github.com/unitedstates/congress)