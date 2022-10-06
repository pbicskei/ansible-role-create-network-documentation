#!/bin/bash
source $(pwd)/../.env

if [[ -z $run ]]; then
output="$(docker run --rm --name ubnt_api_call \
-e CONTROLLER_USER=${UBNT_USER} \
-e CONTROLLER_PASSWORD=${UBNT_PASSWORD} \
-e CONTROLLER_URL=${UBNT_URL} \
-e CONTROLLER_VERSION=${UBNT_VERSION} \
$IMAGE_NAME:$IMAGE_VERSION calls/$1.php)"
echo $output
exit 0
else
exit 1
fi