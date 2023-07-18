# specify a base image
FROM centos:7

LABEL descirption="Containerize apache webapp"

# run yum update
RUN yum -y update

# install apache
RUN yum -y install httpd

# copy index file from our local to the source
COPY index.html /var/www/html

# Open port 80
EXPOSE 80

# run httpd service when the container starts equivalent of systemctl start httpd
ENTRYPOINT [ "usr/sbin/httpd" ]

#can overider cmd outside
CMD [ "-D", "FOREGROUND" ]
