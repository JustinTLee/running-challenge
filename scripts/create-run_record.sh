#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/run_records"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "run_record": {
      "user_id": "'"${USER}"'",
      "date": "'"${DATE}"'",
      "difficulty": "'"${DIFFICULTY}"'",
      "distance": "'"${DISTANCE}"'",
      "time": "'"${TIME}"'",
      "finished": "'"${FINISHED}"'"
    }
  }'

echo