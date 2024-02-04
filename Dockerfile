FROM --platform=linux/amd64 python:3.8.12-buster
# FROM --platform=linux/amd64 tensorflow/tensorflow:2.10.0

WORKDIR /prod

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY finance-news-api finance-news-api
COPY setup.py setup.py
RUN pip install .

# COPY preload-model.py preload-model.py
# RUN python preload-model.py

EXPOSE 8000

CMD uvicorn finance-news-api.main:app --host 0.0.0.0 --port 8000
