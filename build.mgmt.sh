#!/bin/bash

wget https://dl4jz3rbrsfum.cloudfront.net/software/ppb470_mgt-linux-x86_x64.sh -O ppb-linux-x86_64.sh
cp install-mgmt.exp install.exp
docker build -t power.mgmt .
rm ppb-linux-x86_64.sh
rm install.exp
