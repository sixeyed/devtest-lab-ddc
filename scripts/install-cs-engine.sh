#!/bin/bash
CS_VERSION=${1:-1.12}
curl -SLf https://packages.docker.com/$CS_VERSION/install.sh | sh
