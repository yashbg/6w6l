import argparse
import os
import sys
import re

parser = argparse.ArgumentParser(description='Search lines that match the pattern')

parser.add_argument(
    'pattern',
    metavar='pattern',
    type=str,
    help='the pattern to match'
)

parser.add_argument(
    'path',
    metavar='path',
    type=str,
    help='the path to the file'
)

args = parser.parse_args()

input_pattern = args.pattern
input_path = args.path

if not os.path.exists(input_path):
    print("The file does not exist")
    sys.exit()

with open(input_path) as file:
    for line in file:
        if re.search(input_pattern, line):
            print(line, end='')
