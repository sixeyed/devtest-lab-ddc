#!/bin/bash

UCP_VERSION=${1:-2.0.1}
USER_NAME=${2:-ddcadmin}
PASSWORD=${3:-ddcX200!6}
AZURE_REGION=${4:-northeurope}

IP_ADDRESS=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')

sudo docker run --rm -it --name ucp \
 -v /var/run/docker.sock:/var/run/docker.sock \
 docker/ucp:$UCP_VERSION install \
 --host-address $IP_ADDRESS \
 --admin-username $USER_NAME \
 --admin-password $PASSWORD \
 --san $HOSTNAME.$AZURE_REGION.cloudapp.azure.com
