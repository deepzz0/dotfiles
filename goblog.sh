docker stop blog
docker rm blog
docker run -d -p 80:80 -p 443:443 --restart=always -v /data/goblog:/data/goblog -v ~/certs:/certs --name blog 127.0.0.1:5000/goblog
