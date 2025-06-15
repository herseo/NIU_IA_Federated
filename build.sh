#!/bin/bash
set -o errexit

# First upgrade core packages
python -m pip install --upgrade pip setuptools wheel

# Then install requirements
pip install -r requirements.txt
