"""
    Flatten iCheck JSON for Tableau to use, because Tableau can't process heavily nested JSON.
    
    @Author jonnykong@cs.ucla.edu
    @Date   2019-10-07
"""

import json
import os
import sys

def flatten(filename: str) -> dict:
    ret = dict()
    with open(filename) as in_file:
        data = json.load(in_file)

        # # Persons
        # ret = []
        # for i in range(len(data['persons'])):
        #     person = data['persons'][i]
        #     name = person['first_name'] + ' ' + person['last_name']
        #     person_id = person['id']
        #     for j in range(len(data['prefix_sums'][i]['prefix_sum'])):
        #         if len(data['prefix_sums'][i]['prefix_sum']) == 0:
        #             continue
        #         tmp = dict()
        #         tmp['name'] = name
        #         tmp['person_id'] = person_id
        #         tmp['party'] = person['party']
        #         tmp['date'] = data['prefix_sums'][i]['prefix_sum'][j][0]
        #         tmp['cumulative_agree'] = data['prefix_sums'][i]['prefix_sum'][j][1]
        #         tmp['cumulative_total'] = data['prefix_sums'][i]['prefix_sum'][j][2]
        #         tmp['agree'] = data['prefix_sums'][i]['prefix_sum'][j][1] - (0 if j == 0 else data['prefix_sums'][i]['prefix_sum'][j - 1][1])
        #         tmp['total'] = data['prefix_sums'][i]['prefix_sum'][j][2] - (0 if j == 0 else data['prefix_sums'][i]['prefix_sum'][j - 1][2])
        #         ret.append(tmp)

        # Vote counts
        ret = dict()
        ret['vote_counts'] = data['vote_counts']['all']
        
    return ret


if __name__ == '__main__':
    filename = sys.argv[1]
    ret = flatten(filename)

    with open('output.json', 'w') as out_file:
        json.dump(ret, out_file)