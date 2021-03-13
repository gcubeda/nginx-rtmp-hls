FROM tiangolo/nginx-rtmp

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y ffmpeg

COPY nginx.conf /etc/nginx/nginx.conf