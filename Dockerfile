FROM python:3.9-slim

WORKDIR /app

# Instalar dependências necessárias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação
COPY . .

# Comando para executar a aplicação
CMD ["python", "main.py"]
