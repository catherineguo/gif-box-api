#!/bin/bash

curl "http://localhost:4741/gifs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "gif": {
      "name": "'"${NAME}"'",
      "gif_url": "'"${URL}"'"
    }
  }'

echo
