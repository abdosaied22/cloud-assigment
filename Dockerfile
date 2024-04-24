FROM python:3.9-slim
WORKDIR /app
COPY stw.py .
COPY random_paragraphs.txt .
RUN pip install nltk matplotlib
RUN python -m nltk.downloader stopwords
CMD ["python", "stw.py"]