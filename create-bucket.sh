#!/bin/bash

# Variables
BUCKET_NAME="gs://my-test-bucket-super-sandbox-1"
LOCATION="us-east1"

# Check if the bucket exists
if gsutil ls -b $BUCKET_NAME &> /dev/null; then
  echo "Bucket $BUCKET_NAME already exists."
else
  echo "Bucket $BUCKET_NAME does not exist. Creating the bucket..."
  gcloud storage buckets create $BUCKET_NAME --location $LOCATION
  if [ $? -eq 0 ]; then
    echo "Bucket $BUCKET_NAME successfully created."
  else
    echo "Failed to create the bucket $BUCKET_NAME. It has already been created"
    exit 1
  fi
fi
