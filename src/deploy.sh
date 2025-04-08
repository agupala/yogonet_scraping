#!/bin/bash

# Deployment script for Yogonet Scraper to Google Cloud Run

# Configuration
PROJECT_ID="your-gcp-project-id"
SERVICE_NAME="yogonet-scraper"
REGION="us-central1"
IMAGE_NAME="gcr.io/$PROJECT_ID/$SERVICE_NAME"
ARTIFACT_REPO="docker-repo"

# Step 1: Build Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME .

# Step 2: Push to Artifact Repository
echo "Pushing image to Artifact Repository..."
docker push $IMAGE_NAME

# Step 3: Deploy to Cloud Run
echo "Deploying to Cloud Run..."
gcloud run deploy $SERVICE_NAME \
  --image $IMAGE_NAME \
  --platform managed \
  --region $REGION \
  --memory 1G \
  --timeout 300 \
  --set-env-vars "GCP_PROJECT_ID=$PROJECT_ID" \
  --allow-unauthenticated

echo "Deployment completed!"