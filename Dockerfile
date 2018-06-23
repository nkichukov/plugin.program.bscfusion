FROM resin/raspberry-pi-alpine-python:latest

MAINTAINER kodi1 version: 0.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV BSCLOGIN user:pass
ENV BSCREFRESH 90

EXPOSE 8888

CMD [ "python", "./dbg.py", "4"]
