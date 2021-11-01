out=output_base64.$$
outfile=output-$$.mp3

curl -X POST \
-H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
-H "X-Goog-User-Project: devops-316907" \
-H "Content-Type: application/json; charset=utf-8" \
-d @request.json \
"https://texttospeech.googleapis.com/v1/text:synthesize" > $out

cat $out | jq ".audioContent" | tr -d '"' | base64 -d > $outfile

echo $outfile