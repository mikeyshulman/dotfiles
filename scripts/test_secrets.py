#!/usr/bin/env python
import os
import json

SECRET_DIR = os.environ['ML_SECRET_DIR']

if __name__ == '__main__':
    for top, dirs, files in os.walk(SECRET_DIR):
        for nm in filter(lambda x: x.endswith('json'),  files):
            path = os.path.join(top, nm)
            print path
            json.load(open(path))
