from rest_framework import serializers
from . import models

class TestDoorSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = models.TestDoor
        fields = ('id' , 'name', 'doorIsLocked')