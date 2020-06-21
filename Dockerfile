FROM ubuntu
LABEL mainterner="Test Docker File"
RUN apt-get update
ENV TZ=Europe/Sofia
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y apache2
COPY ./index.html /var/www/html/index.html
EXPOSE 80

