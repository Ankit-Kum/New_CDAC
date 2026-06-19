FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y apache2 
RUN apt install git -y

RUN git clone https://github.com/Ankit-Kum/New_CDAC.git /New_CDAC


COPY . . 

WORKDIR /NEW_CDAC 

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachectl" , "-D" , "FOREGROUND"]
