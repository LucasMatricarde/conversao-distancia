FROM python:3.13.0

# Copia e instala dependências
COPY requirements.txt .
RUN pip install -r requirements.txt

# Define o diretório de trabalho e copia os arquivos
WORKDIR /app
COPY . /app/

# Expõe a porta
EXPOSE 5000

# Comando para iniciar o Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
