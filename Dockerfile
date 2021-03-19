FROM tiangolo/nginx-rtmp

RUN apt-get -y update
RUN apt-get -y upgrade
# RUN apt-get install -y ffmpeg
RUN apt install -y $(apt-cache --names-only search ^gstreamer1.0-* | awk '{ print $1 }' | grep -v gstreamer1.0-hybris)

COPY nginx.conf /etc/nginx/nginx.conf