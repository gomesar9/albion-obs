FROM python:3.12-slim

LABEL maintainer="gomesar9@protonmail.com"

# Setar o diretório de trabalho dentro do container
WORKDIR /app

# Copia arquivos
COPY requirements.txt requirements.txt
COPY static/ static/
COPY templates/ templates/
COPY app.py app.py

# Instalar as dependências
RUN pip install -r requirements.txt

# Comando para executar o aplicativo
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
