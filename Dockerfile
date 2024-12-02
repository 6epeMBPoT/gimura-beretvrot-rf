FROM python:latest

WORKDIR /usr/src/app

COPY . .

RUN yes | apt-get update && yes | apt-get upgrade

CMD ["python3", "-m", "http.server"]
