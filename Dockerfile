FROM python:latest

WORKDIR /usr/src/app

COPY . .
COPY nginx.conf /etc/nginx/sites-enabled/

RUN yes | apt-get update && yes | apt-get upgrade
RUN yes | apt-get install nginx

EXPOSE 8000

CMD ["python3", "-m", "http.server"]
