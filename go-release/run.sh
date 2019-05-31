#!/bin/bash

set -eu

cd $GITHUB_WORKSPACE
go install -v $BINARY_FOLDER

EVENT_DATA=$(cat $GITHUB_EVENT_PATH)
UPLOAD_URL=$(echo $EVENT_DATA | jq -r .release.upload_url)
UPLOAD_URL=${UPLOAD_URL/\{?name,label\}/}
RELEASE_NAME=$(echo $EVENT_DATA | jq -r .release.tag_name)
PROJECT_NAME=$(basename $GITHUB_REPOSITORY)
NAME="${PROJECT_NAME}_${RELEASE_NAME}_linux_amd64"

curl \
  -X POST \
  --data-binary @/go/bin/$(basename $BINARY_FOLDER) \
  -H 'Content-Type: application/gzip' \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  "${UPLOAD_URL}?name=${NAME}"
