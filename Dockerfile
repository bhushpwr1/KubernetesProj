FROM ubuntu:latest				
MAINTAINER bpawar401@gmail.com	
RUN sudo apt-get install apache2 -y 
sudo apt-get install zip			
sudo apt-get install unzip				
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/		: Update code url sourc
WORKDIR /var/www/html/	
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
