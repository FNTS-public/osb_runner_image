FROM python:3.9.18-bullseye

COPY . .

RUN pip install -r requirements.txt
