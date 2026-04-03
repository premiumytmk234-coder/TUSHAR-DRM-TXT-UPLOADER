FROM python:3.10-slim

WORKDIR /app

COPY . /app

Install system dependencies

RUN apt-get update && apt-get install -y 
ffmpeg 
aria2 
&& rm -rf /var/lib/apt/lists/*

Upgrade pip & install requirements

RUN pip install --no-cache-dir --upgrade pip 
&& pip install --no-cache-dir -r requirements.txt

Run bot

CMD ["python", "main.py"]