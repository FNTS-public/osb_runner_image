#FROM python:3.9.18-bullseye
FROM summerwind/actions-runner:latest

COPY . .

RUN sudo apt-get update -y \
    && sudo apt-get install -y libpq-dev gcc\
    && sudo rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt
