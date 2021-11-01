out=output_base64.$$

curl -X POST \
-H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
-H "X-Goog-User-Project: devops-316907" \
-H "Content-Type: application/json; charset=utf-8" \
-d @request.json \
"https://texttospeech.googleapis.com/v1/text:synthesize" > $out