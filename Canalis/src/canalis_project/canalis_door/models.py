from django.db import models

# Create your models here.
class TestDoor(models.Model):
    """
    A test model for testing the api
    """
    name = models.CharField(max_length=15, default = '')
    doorIsLocked = models.BooleanField(default=False)
