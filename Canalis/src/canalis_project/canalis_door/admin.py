from django.contrib import admin

from .models import Test_door

# Add Test_door to admin site for managment
admin.site.register(Test_door)