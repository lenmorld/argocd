#!/bin/bash

echo "=== bash script ==="
echo "Hello world"
echo "Image version: $1"
export IMAGE_VERSION="$1"
printenv
# apply env variables in template.yaml into deployment.yaml
# using > will replace it every time, not append
envsubst < templates/deployment.yaml > kubernetes/deployment.yaml
echo "===== result of envsubst ===="
cat kubernetes/deployment.yaml
echo "===== end of envsubst"
echo "=== end of bash script ==="
