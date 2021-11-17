FROM python:3
WORKDIR /app
COPY . .
RUN pip install boto3
ENTRYPOINT ["python", "file_upload_s3.py"]