FROM ubuntu
Label Author=Nitin
RUN apt update
RUN apt install -y apache2
RUN apt clean
WORKDIR /var/www/html
COPY index.html /var/www/html
EXPOSE 8080
CMD ["apache2ctl","-D","FOREGROUND"]

