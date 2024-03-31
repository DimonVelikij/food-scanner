FROM python:latest

RUN /usr/local/bin/python -m pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt