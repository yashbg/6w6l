import argparse
import os
import sys

parser = argparse.ArgumentParser(description='Walk the directory hierarchy')

parser.add_argument(
    'path',
    metavar='path',
    type=str,
    help='the path to the directory'
)

args = parser.parse_args()

input_path = args.path

if not os.path.isdir(input_path):
    print("The directory does not exist")
    sys.exit()

for root, folders, files in os.walk(input_path):
    for filename in folders + files:
        print(os.path.join(root, filename))
