from django.urls import path
from .views import listar_actividades

urlpatterns = [
    path('actividades/', listar_actividades, name='listar_actividades'),
]
