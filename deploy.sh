GOOGLE_PROJECT_ID=vivid-outcome-277104
IMAGE_NAME=nodepocimagen 
API_NAME=apinodedockerizada

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/$IMAGE_NAME:1.0 \
  --project=$GOOGLE_PROJECT_ID

gcloud beta run deploy $API_NAME \
  --image gcr.io/$GOOGLE_PROJECT_ID/$IMAGE_NAME:1.0 \
  --platform managed \
  --region us-central1 \
  --project=$GOOGLE_PROJECT_ID