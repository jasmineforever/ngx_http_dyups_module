#!/bin/bash
DIR="$(dirname "$PWD")"
echo $DIR
sudo docker run -e MODULE_PATH=/root/ngx_http_dyups_module \
    -v $DIR:/root/ngx_http_dyups_module/ \
    -v $PWD/output/:/root/nginx-1.19.7/objs/ \
     wise_nginx_module_builder