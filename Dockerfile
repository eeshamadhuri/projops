FROM ubuntu:latest
MAINTAINER eeshamadhuri12@gmail.com
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/inance.zip /var/wwww/html/
WORKDIR /var/www/html
RUN unzip inance.zip
RUN cp -rvf inance/* .
RUN rm -rf inance inance.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80



