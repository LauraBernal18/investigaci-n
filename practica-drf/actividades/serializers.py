
from rest_framework import serializers


class ActividadSerializer(serializers.Serializer):
    titulo = serializers.CharField(max_length=150)
    fecha = serializers.CharField(max_length=50)
    lugar = serializers.CharField(max_length=100)
