from django.shortcuts import render
from rest_framework import viewsets
from . import models
from . import serializers

# Create your views here.
class TestDoorViewSet(viewsets.ModelViewSet):

    serializer_class = serializers.TestDoorSerializer
    queryset = models.TestDoor.objects.all()