#!/bin/bash
set -e

# Get inputs
TIMESTAMP=$1
STORAGE_ACCOUNT=$2
COMMIT_SHA=$3

echo "Uploading development build artifact to Azure Storage..."

# Create container if it doesn't exist
echo "Checking if container exists..."
az storage container exists --name builds --account-name $STORAGE_ACCOUNT --auth-mode key
if [ $? -ne 0 ]; then
  echo "Container doesn't exist, creating..."
  az storage container create --name builds --account-name $STORAGE_ACCOUNT --auth-mode key
fi

# Upload build artifact
echo "Uploading build artifact..."
az storage blob upload \
  --container-name builds \
  --name "dev/taskhub-dev-${TIMESTAMP}.zip" \
  --file taskhub-dev-${TIMESTAMP}.zip \
  --account-name $STORAGE_ACCOUNT \
  --auth-mode key

# Upload build info
echo "Uploading build info..."
az storage blob upload \
  --container-name builds \
  --name "dev/build-info-${TIMESTAMP}.txt" \
  --file build-info.txt \
  --account-name $STORAGE_ACCOUNT \
  --auth-mode key

# Tag as latest dev build
echo "Creating latest reference..."
az storage blob copy start \
  --source-container builds \
  --source-blob "dev/taskhub-dev-${TIMESTAMP}.zip" \
  --destination-container builds \
  --destination-blob "dev/taskhub-latest.zip" \
  --account-name $STORAGE_ACCOUNT \
  --auth-mode key

echo "Artifact upload complete"
echo "::set-output name=download_url::https://${STORAGE_ACCOUNT}.blob.core.windows.net/builds/dev/taskhub-latest.zip"