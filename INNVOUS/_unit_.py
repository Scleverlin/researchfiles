# coding: utf-8
import re
import argparse

def replace_units(filename):
    with open(filename, 'r') as file:
        content = file.read()

    new_content = re.sub(r'(UNITS DISTANCE MICRONS\s+)(1000)', r'\g<1>4000', content)

    with open(filename, 'w') as file:
        file.write(new_content)

def main():
    parser = argparse.ArgumentParser(description='Replace numbers in file')
    parser.add_argument('filename', type=str, help='File to be processed')

    args = parser.parse_args()

    replace_units(args.filename)

if __name__ == "__main__":
    main()



