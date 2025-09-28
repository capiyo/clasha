#!/usr/bin/env bash
# build.sh for Clasha Django project on Render.com

set -o errexit  # Exit on any error

echo "=== Starting Clasha Django Build Process ==="

# Install Python dependencies
echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput --clear

# Apply database migrations
echo "Applying database migrations..."
python manage.py migrate

# Create superuser (optional - for initial setup, you might want to remove this in production)
# echo "Creating superuser if needed..."
# echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@example.com', 'password') if not User.objects.filter(username='admin').exists() else None" | python manage.py shell

echo "=== Build completed successfully! ==="