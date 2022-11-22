FROM centos: latest
MAINTAINER anshu7833@gmail.com
RUN yum install httpd -y\
zip \
unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/nolo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip nolo.zip
RUN cp -rvf nolo.zip/* .
RUN rm -rf nolo nolo.zip
CMD ["usr/sbin/httpd" "-D", "FOREGROUND"]
EXPOSE 80
