from django.contrib.auth import get_user_model
from django.core.management import base

class Command(base.BaseCommand):
    def handle(self, *args, **options):
        User = get_user_model()
        if not User.objects.filter(username='admin').exists():
            User.objects.create_superuser('admin', 'admin@example.com', 'admin')
            print('Superuser created with username: admin and password: admin')
        else:
            print('Superuser already exists')