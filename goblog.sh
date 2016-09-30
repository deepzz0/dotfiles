docker stop blog
docker rm blog
docker run -d -p 9010:9010 --restart=always -v /data/goblog:/data/goblog -v ~/certs:/certs --name blog registry.cn-hangzhou.aliyuncs.com/deepzz/goblog
