"""Python console app"""
from dbgen.db import DbGenerator

if __name__ == '__main__':
    generator = DbGenerator()
    generator.generate(10000)
