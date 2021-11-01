#gcloud services enable texttospeech.googleapis.com
export PROJECT_ID=$(gcloud config get-value core/project)
#gcloud iam service-accounts create my-tts-sa   --display-name "my tts service account"
#gcloud iam service-accounts keys create ~/key.json   --iam-account my-tts-sa@${PROJECT_ID}.iam.gserviceaccount.com
export GOOGLE_APPLICATION_CREDENTIALS=~/key.json
#pip3 install --user --upgrade google-cloud-texttospeech
python3 tts1.py 
