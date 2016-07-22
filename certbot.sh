#!/bin/bash
git clone https://github.com/letsencrypt/letsencrypt.git \
cd letsencrypt \
sudo ./certbot-auto certonly --standalone --email deepzz.qi@gmail.com \
  -d deepzz.com \
  -d www.deepzz.com \
  -d registry.deepzz.com 

#./certbot-auto renew --standalone --pre-hook "service nginx stop" --post-hook "service nginx start"
