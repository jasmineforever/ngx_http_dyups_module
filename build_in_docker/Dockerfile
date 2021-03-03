FROM nginx:1.19.7
LABEL maintainer="build nginx module in nginx official docker image"
WORKDIR /root

COPY sources.list /etc/apt/sources.list
RUN apt update -y && apt install -y libpcre3-dev zlib1g-dev build-essential
COPY nginx-1.19.7.tar.gz .
RUN tar -zxf nginx-1.19.7.tar.gz
# sudo docker run xx
CMD CONFARGS=$(nginx -V 2>&1 | sed -n -e 's/^.*arguments: //p') && echo $CONFARGS &&\
        cd /root/nginx-1.19.7/ && \
        ./configure --with-compat "$CONFARGS" --add-dynamic-module=${MODULE_PATH} && \
        make CFLAGS="-Wunused-but-set-variable" modules
