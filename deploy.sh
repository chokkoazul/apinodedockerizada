GOOGLE_PROJECT_ID=dockeruniversidades
IMAGE_NAME=nodedockerizado
SERVICE_NAME=servicenodedockerizada

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/$IMAGE_NAME:1.0 \
  --project=$GOOGLE_PROJECT_ID

gcloud beta run deploy $SERVICE_NAME \
  --image gcr.io/$GOOGLE_PROJECT_ID/$IMAGE_NAME:1.0 \
  --platform managed \
  --region us-central1 \
  --project=$GOOGLE_PROJECT_ID
