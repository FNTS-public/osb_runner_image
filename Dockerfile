#FROM python:3.9.18-bullseye
FROM summerwind/actions-runner:latest

COPY . .

RUN apt-get update && \
    apt-get install -y libpq-dev gcc

RUN pip install -r requirements.txt
