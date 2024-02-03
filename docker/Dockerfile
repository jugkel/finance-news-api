FROM python:3.9

COPY ./docker/docker-requirements.txt /docker-requirements.txt
RUN pip install -r /docker-requirements.txt

COPY ./finance-news-api /finance-news-api
RUN pip install -r /finance-news-api/requirements.txt

COPY ./docker/preload-model.py /preload-model.py
RUN python /preload-model.py

EXPOSE 8000

WORKDIR /finance-news-api
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]