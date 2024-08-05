#!/bin/bash

. /root/miniconda3/etc/profile.d/conda.sh

conda init bash
source ~/.bashrc

conda activate unsloth_env
pip install fastapi uvicorn
pip install mysql-connector-python


sh -c "apt-get update \
apt-get install mysql-client"


sh -c "apt-get update \
    && apt-get install -y wget \
    && wget -O - https://github.com/jwilder/dockerize/releases/download/v0.7.0/dockerize-linux-amd64-v0.7.0.tar.gz | tar xzf - -C /usr/local/bin \
    && apt-get autoremove -yqq --purge wget && rm -rf /var/lib/apt/lists/*"


dockerize -wait tcp://mysql:3306 -timeout 30s


fastapi run app.py --host 0.0.0.0 --port 8000
