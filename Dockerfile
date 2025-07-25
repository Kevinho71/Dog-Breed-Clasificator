# Imagen base oficial con Python 3.10 y ligera
FROM python:3.10-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar requirements.txt e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el proyecto al contenedor
COPY . .

# Exponer el puerto que usará Streamlit
EXPOSE 8501

# Variables de entorno para Streamlit
ENV PYTHONUNBUFFERED=1 \
    STREAMLIT_SERVER_PORT=8501 \
    STREAMLIT_SERVER_ADDRESS=0.0.0.0

# Comando para ejecutar tu app principal
CMD ["streamlit", "run", "src/DogBreedClasificator.py"]
