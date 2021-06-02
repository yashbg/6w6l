import argparse
import os
import sys

parser = argparse.ArgumentParser(description='Make an empty directory')

parser.add_argument(
    'path',
    metavar='path',
    type=str,
    help='the path to the new directory'
)

args = parser.parse_args()

input_path = args.path

if os.path.exists(input_path):
    if os.path.isdir(input_path):
        print("The directory already exists")
    else:
        print("A file with the same path already exists")
    sys.exit()

os.makedirs(input_path)

print("Directory created")