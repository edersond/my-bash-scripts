#!/bin/bash
cd ~/
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-linux-x86_64.tar.gz
tar -xf google-cloud-cli-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh
./google-cloud-sdk/bin/gcloud init
alias gcloud='~/google-cloud-sdk/bin/gcloud'
rm google-cloud-cli-linux-x86_64.tar.gz