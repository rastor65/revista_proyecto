# Generated by Django 4.1.7 on 2023-10-06 21:46

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='ContenidoSolicitud',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('resumen', models.CharField(max_length=252)),
                ('palabras_claves', models.CharField(max_length=252)),
                ('abstract', models.CharField(max_length=252)),
                ('Keywords', models.CharField(max_length=252)),
                ('introduccion', models.CharField(max_length=252)),
                ('materi_metodos', models.CharField(max_length=252)),
                ('result_discu', models.CharField(max_length=252)),
                ('agradecimientos', models.CharField(max_length=252)),
                ('literact_citada', models.CharField(max_length=252)),
                ('archivo_adjunto', models.FileField(upload_to='archivos/archivos_contenido_solicitud/')),
                ('status', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='EstadoSeguimiento',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=252)),
                ('descripcion', models.CharField(max_length=252)),
                ('status', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='PasosSeguimiento',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nivel', models.IntegerField()),
                ('nombre', models.CharField(max_length=252)),
                ('dias_programacion', models.CharField(max_length=252)),
                ('status', models.BooleanField(default=True)),
            ],
            options={
                'verbose_name': 'PasosSeguimiento',
            },
        ),
        migrations.CreateModel(
            name='Revista',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=252, unique=True)),
                ('status', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Solicitud',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo_articulo', models.CharField(max_length=252)),
                ('fecha_creacion', models.DateTimeField(auto_now_add=True)),
                ('afiliacion', models.CharField(max_length=252)),
                ('status', models.BooleanField(default=True)),
                ('autores', models.ManyToManyField(to=settings.AUTH_USER_MODEL)),
                ('contenidoSolicitud', models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to='solicitudes.contenidosolicitud')),
                ('revista', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='solicitudes.revista')),
            ],
            options={
                'verbose_name': 'Solicitud',
            },
        ),
        migrations.CreateModel(
            name='Seguimiento',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_asignacion', models.DateField(blank=True, null=True)),
                ('fecha_programacion', models.DateField(blank=True, null=True)),
                ('fecha_evaluacion', models.DateField(blank=True, null=True)),
                ('correciones', models.FileField(blank=True, null=True, upload_to='archivos/archivos_seguimiento/')),
                ('formato_evaluacion', models.FileField(blank=True, null=True, upload_to='archivos/archivos_seguimiento/')),
                ('status', models.BooleanField(default=True)),
                ('cambio_relevante', models.BooleanField(default=False)),
                ('estado_seguimiento', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='estado_seguimiento', to='solicitudes.estadoseguimiento')),
                ('pasos_seguimiento', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='pasos_seguimiento', to='solicitudes.pasosseguimiento')),
                ('responsableId', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='responsable', to=settings.AUTH_USER_MODEL)),
                ('solicitudId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solicitudes.solicitud')),
            ],
        ),
        migrations.CreateModel(
            name='Anexos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('status', models.BooleanField(default=True)),
                ('solicitudId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='solicitudes.solicitud')),
            ],
        ),
    ]
