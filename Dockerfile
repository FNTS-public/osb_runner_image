FROM python:3.9.18-bullseye

COPY . .

RUN apt-get update && \
    apt-get install -y libpq-dev gcc

RUN pip install -r requirements.txt
