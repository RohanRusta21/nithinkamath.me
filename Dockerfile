FROM ubuntu
LABEL maintainer="Rohan Rustagi"
RUN apt update -y
RUN apt install nginx -y
COPY /layouts/. /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]