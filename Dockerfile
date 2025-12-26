# 1. Imagen base ligera
FROM python:3.11-slim

# 2. Directorio de trabajo
WORKDIR /app

# 3. Copiar e instalar dependencias (usando caché de Docker)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copiar el código fuente
COPY main.py .

# 5. Documentar el puerto (opcional pero recomendado)
EXPOSE 4000

# 6. Ejecutar Uvicorn directamente
# main:app indica (archivo main.py : instancia app de FastAPI)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "4000"] 
