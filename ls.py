import argparse
import os
import sys

parser = argparse.ArgumentParser(description='List the contents of a folder')

parser.add_argument(
    'path',
    metavar='path',
    type=str,
    help='the path to list'
)

args = parser.parse_args()

input_path = args.path

if not os.path.isdir(input_path):
    print('The path specified does not exist')
    sys.exit()

print('\n'.join(os.listdir(input_path)))