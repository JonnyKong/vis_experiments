# -*- coding: utf-8 -*-
"""
    Parse query log file from Json (from Azure Data Studio) to SQL format.

    @Author jonnykong@cs.ucla.edu
    @Date   2019-09-02
"""

import json
import sys


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('Usage: {} <filename>'.format(sys.argv[0]))
        exit(1)

    filename = sys.argv[1]
    with open(filename) as f:
        data = json.load(f)
    
    for idx, val in enumerate(data):
        print('-- {}'.format(val['last_execution_time']))
        print(val['text'])
        print('')