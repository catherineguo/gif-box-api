#!/bin/bash

curl "http://localhost:4741/gifs" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
