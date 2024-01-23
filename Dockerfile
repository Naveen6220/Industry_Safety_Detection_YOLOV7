FROM python:3.9-slim-buster
WORKDIR /app

RUN apt-get update && \
    apt-get install -y awscli ffmpeg libsm6 libxext6 unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
