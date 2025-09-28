#!/usr/bin/env bash
# build.sh for Python application on Render.com

set -o errexit  # Exit on any error

echo "Starting build process..."

# Install system dependencies if needed
# echo "Installing system dependencies..."
# apt-get update
# apt-get install -y some-package

# Upgrade pip to latest version
echo "Upgrading pip..."
pip install --upgrade pip

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# If you need to install dependencies without requirements.txt
# pip install flask gunicorn pandas numpy  # add your packages

# Run any build steps for your specific application
# echo "Running build steps..."

# For Django projects, you might want:
# echo "Running Django migrations..."
# python manage.py migrate

# For collecting static files (Django):
# echo "Collecting static files..."
# python manage.py collectstatic --noinput

# For Flask projects with build steps:
# echo "Running Flask build steps..."

# Run tests if you have them
# echo "Running tests..."
# python -m pytest

echo "Build completed successfully!"