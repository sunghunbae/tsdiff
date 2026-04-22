#!/usr/bin/bash

PARENT_DIR=$(dirname $(pwd))
export PYTHONPATH="$PARENT_DIR:${PYTHONPATH}"

python3 preprocessing.py

ls data/TS/wb97xd3/random_split_42
