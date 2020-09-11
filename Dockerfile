
FROM ubuntu:12.04
##Actualizacimos el sistemas
RUN apt-get update
RUN apt-get install -y nginx
VOLUME  /usr/share/nginx/www/
ADD web /usr/share/nginx/www/
#RUN echo 'Mi primer Dockerfile' > /usr/share/nginx/www/index.html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80 

