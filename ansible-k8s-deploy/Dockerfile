FROM ubuntu

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y tzdata
RUN apt-get install -y apache2
RUN rm -rf /var/www/html/*
RUN DEBIAN_FRONTEND=noninteractive
ADD /home/ansible/k8s-docker-images /var/www/html
RUN chown -R www-data:www-data var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
