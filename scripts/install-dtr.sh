#!/bin/bash

DTR_VERSION=${1:-2.0.1}
UCP_HOSTNAME=${2:-ddc-ucp-1}
USER_NAME=${3:-ddcadmin}
PASSWORD=${4:-ddcX200!6}
AZURE_REGION=${5:-northeurope}

IP_ADDRESS=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')

sudo docker run --rm -it --name dtr \
 docker/dtr:$DTR_VERSION install \
 --dtr-external-url https://$HOSTNAME.$AZURE_REGION.cloudapp.azure.com \
 --ucp-node $UCP_HOSTNAME \
 --ucp-insecure-tls \
 --ucp-url https://$UCP_HOSTNAME.$AZURE_REGION.cloudapp.azure.com \
 --ucp-username $USER_NAME
 
