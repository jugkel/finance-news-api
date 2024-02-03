from transformers import pipeline

#Load model
task = "text-classification"
model_id = "mrm8488/deberta-v3-ft-financial-news-sentiment-analysis"
classifier = pipeline(task, model_id)