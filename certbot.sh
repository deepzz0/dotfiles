#!/bin/bash
cd letsencrypt \
sudo ./certbot-auto certonly --standalone --email deepzz.qi@gmail.com \
  -d deepzz.com \
  -d www.deepzz.com \
  -d registry.deepzz.com 
