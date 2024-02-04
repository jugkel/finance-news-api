finance-news-api
================

Running Locally
------------

1) Install dependencies with pip
```
pip3 install -r requirements.txt
```

2) Run the application with python
```
uvicorn finance-news-api.main:app --reload
```

Build and deploy the docker image locally
------

1) Build the docker image
```
docker build . -t eu.gcr.io/potent-odyssey-413213/finance-news-api:light -f ./Dockerfile-local
```

2) Deploy the docker container locally
```
docker run --rm -p 8000:8000 eu.gcr.io/potent-odyssey-413213/finance-news-api:light
```

Build and deploy the docker image to GCP
------

1) Ensure that the GCP [Google Container Registry API](https://console.cloud.google.com/flows/enableapi?apiid=containerregistry.googleapis.com&redirect=https://cloud.google.com/container-registry/docs/quickstart) is enabled for your project

2) Use the gcloud cli to configure docker to be able to push to images to GCP

```
gcloud auth configure-docker
```

3) Build the docker image
```
docker build . -t eu.gcr.io/potent-odyssey-413213/finance-news-api:prod
```

4) Push the image to the GCP Google Container Registry.
```
docker push eu.gcr.io/potent-odyssey-413213/finance-news-api:prod
```

5) Deploy the docker container on GCP
```
gcloud run deploy --image eu.gcr.io/potent-odyssey-413213/finance-news-api:prod --cpu=2 --memory "4Gi" --region "europe-west1" --max-instances 1 --port=8000 --timeout 60s
```

6) Provide the following inputs
```
Service name: finance-news-api
Allow unauthenticated invocations to [finance-news-api] (y/N)?  y
```

