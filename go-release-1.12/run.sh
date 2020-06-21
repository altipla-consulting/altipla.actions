#!/bin/bash

set -eu

COMMAND=${COMMAND:-$(pwd)}

BIN_NAME=$(basename $COMMAND)
if [ $BIN_NAME == 'workspace' ]; then
  BIN_NAME=$(basename $GITHUB_REPOSITORY)
fi

cd $GITHUB_WORKSPACE
go install -v $COMMAND

EVENT_DATA=$(cat $GITHUB_EVENT_PATH)
UPLOAD_URL=$(echo $EVENT_DATA | jq -r .release.upload_url)
UPLOAD_URL=${UPLOAD_URL/\{?name,label\}/}
RELEASE_NAME=$(echo $EVENT_DATA | jq -r .release.tag_name)
PROJECT_NAME=$(basename $GITHUB_REPOSITORY)
NAME="${PROJECT_NAME}_${RELEASE_NAME}_linux_amd64"

curl -X POST --data-binary @/go/bin/$BIN_NAME -H 'Content-Type: application/gzip' -H "Authorization: Bearer ${GITHUB_TOKEN}" "${UPLOAD_URL}?name=${NAME}"
