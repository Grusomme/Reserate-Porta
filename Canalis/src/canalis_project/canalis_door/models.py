from django.db import models

# Create your models here.
class Test_door(models.Model):
    """
    A test model for testing the api
    """
    door_is_locked = models.BooleanField(default=False)
