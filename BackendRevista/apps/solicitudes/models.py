from django.db import models
from django.contrib.auth import get_user_model
from apps.authenticacion.models import CustomUser

CustomUser = get_user_model()

class ContenidoSolicitud(models.Model):
    declaracion_originalidad = models.FileField(upload_to='archivos/archivos_contenido_solicitud/')
    archivo_adjunto = models.FileField(upload_to='archivos/archivos_contenido_solicitud/')
    status = models.BooleanField(default=True)
     
class Revista(models.Model):
    nombre = models.CharField(max_length=250, unique=True)
    status = models.BooleanField(default=True)
    
    def __str__(self):
        return self.nombre 
       
class Solicitud(models.Model):
    titulo_articulo = models.CharField(max_length=200) 
    autores = models.ManyToManyField(CustomUser)
    contenidoSolicitud = models.OneToOneField(ContenidoSolicitud, on_delete=models.CASCADE, null=True)
    revista = models.ForeignKey(Revista, on_delete=models.CASCADE, null=True)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    afiliacion = models.CharField(max_length=252)
    status = models.BooleanField(default=True)
    
    def __str__(self):
        return self.titulo_articulo

    class Meta:
        verbose_name = 'Solicitud' 
        
class PasosSeguimiento(models.Model):
    nivel = models.IntegerField()
    nombre = models.CharField(max_length=252)
    dias_programacion = models.CharField(max_length=252)
    status = models.BooleanField(default=True)
   
    def __str__(self):
        return self.nombre
    
    class Meta:
        verbose_name = 'PasosSeguimiento'        
        
class EstadoSeguimiento(models.Model):
    nombre = models.CharField(max_length=252)
    descripcion = models.CharField(max_length=252)
    status = models.BooleanField(default=True)
    
    def __str__(self):
        return str(self.nombre)
        
class Seguimiento(models.Model):
    solicitudId = models.ForeignKey(Solicitud,on_delete=models.CASCADE) 
    fecha_asignacion = models.DateField(null=True, blank=True)
    fecha_programacion = models.DateField(null=True, blank=True)
    fecha_evaluacion = models.DateField(null=True, blank=True)
    pasos_seguimiento = models.ForeignKey(PasosSeguimiento,on_delete=models.CASCADE, related_name='pasos_seguimiento', blank=True, null=True)
    estado_seguimiento = models.ForeignKey(EstadoSeguimiento, on_delete=models.CASCADE, related_name='estado_seguimiento', null=True, blank=True)
    responsableId = models.ForeignKey(CustomUser, on_delete=models.CASCADE, related_name='responsable', null=True, blank=True)
    correciones = models.FileField(upload_to='archivos/archivos_seguimiento/', null=True, blank=True)
    formato_evaluacion = models.FileField(upload_to='archivos/archivos_seguimiento/', null=True, blank=True)
    status = models.BooleanField(default=True)
    cambio_relevante = models.BooleanField(default=False)
    
    def _str_(self):
        return str(self.solicitudId)

class Anexos(models.Model):
    solicitudId = models.ForeignKey(Solicitud,on_delete=models.CASCADE)
    status = models.BooleanField(default=True)
    
    def __str__(self):
        return str(self.solicitudId)
        