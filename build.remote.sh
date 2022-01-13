#!/bin/bash

curl -s -L -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' 'https://www.cyberpower.com/global/en/File/GetFileSampleByType?fileId=SU-20040001-04&fileType=Download%20Center&fileSubType=FileOriginal' -o ppb-linux-x86_64.sh
cp install-remote.exp install.exp
docker build -t power.mgmt .
rm ppb-linux-x86_64.sh
rm install.exp
