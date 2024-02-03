finance-news-api
================

Running Locally
------------
Navigate to the finance-news-api directory.
```
cd finance-news-api
```

Install dependencies with pip
```
pip3 install -r requirements.txt
```

Run the application with python
```
uvicorn main:app --reload
```

Docker
------

We also provide a Docker image to make it easier to run *finance-news-api*
```
docker build . -t finance-news-api -f docker/Dockerfile
```

Then run the image
```
docker run --rm -p 8000:8000 finance-news-api
```
