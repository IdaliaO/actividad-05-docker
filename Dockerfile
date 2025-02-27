#SO y python
FROM python:3.12-slim
#Crear carpeta de trabajo
WORKDIR /app
#importar proyecto a la carpeta
COPY . /app
#instalar dependecias
RUN pip install --no-cache-dir -r requeriments.txt
#exponer el puerto
EXPOSE 5000
#ejecutar el proyecto
CMD ["python", "app.py"]