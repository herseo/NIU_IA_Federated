#!/bin/bash
set -o errexit

# Install system dependencies
apt-get update
apt-get install -y $(cat aptfile)

# Create virtual environment
python -m venv venv
source venv/bin/activate

# Install packages in optimal order
pip install --upgrade pip setuptools wheel

# Install base packages first
pip install numpy==1.24.4
pip install pandas==2.1.4
pip install matplotlib==3.7.2

# Then install remaining packages
pip install -r requirements.txt
