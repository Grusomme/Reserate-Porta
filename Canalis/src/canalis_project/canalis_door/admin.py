from django.contrib import admin

from . import models

# Add Test_door to admin site for managment
admin.site.register(models.TestDoor)