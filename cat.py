import argparse
import os
import sys

parser = argparse.ArgumentParser(description='Display the contents of a file')

parser.add_argument(
    'path',
    metavar='path',
    type=str,
    help='the path to the file'
)

args = parser.parse_args()

input_path = args.path

if not os.path.exists(input_path):
    print("The file does not exist")
    sys.exit()

with open(input_path) as file1:
    print(file1.read())
