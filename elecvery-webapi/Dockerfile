FROM ubuntu:18.04
FROM nginx:1.21.4

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY ./conf.d/nginx.conf  /etc/nginx/nginx.conf

VOLUME ["/data", "/etc/nginx", "/var/log/nginx"]

WORKDIR /etc/nginx

EXPOSE 22088
EXPOSE 21024
EXPOSE 59797

CMD ["nginx"]