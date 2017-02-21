
#!/bin/bash

CS_VERSION=${1:-1.13}
USER_NAME=${2:-ddcadmin}

curl -SLf https://packages.docker.com/$CS_VERSION/install.sh | sh
sudo usermod -aG docker $USER_NAME

sudo apt-get install -y unzip
