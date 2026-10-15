from rest_framework.decorators import api_view
from rest_framework.response import Response

from .serializers import ActividadSerializer


@api_view(['GET'])
def listar_actividades(request):
    datos = [
        {
            'titulo': 'Innovación y tecnología',
            'fecha': '15 de noviembre de 2026',
            'lugar': 'Auditorio principal',
        },
        {
            'titulo': 'Inteligencia artificial aplicada',
            'fecha': '16 de noviembre de 2026',
            'lugar': 'Sala de conferencias 2',
        },
    ]

    serializer = ActividadSerializer(datos, many=True)
    return Response(serializer.data)
