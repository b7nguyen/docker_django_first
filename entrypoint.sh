#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

echo "Applying database migrations..."
# python manage.py migrate

# Collect static files (optional)
# echo "Collecting static files..."
# python manage.py collectstatic --noinput



# Apply database migrations, using poetry ensures commands runs within the env managed by poetry
poetry run python manage.py migrate

# Collect static files (if you have any)
# poetry run python manage.py collectstatic --noinput

# Create a superuser if it doesn't exist
poetry run python manage.py shell -c "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'admin') if not User.objects.filter(username='admin').exists() else print('Superuser already exists')"

# Start the Django server
echo "Starting server..."

# Executes the 
exec "$@"
