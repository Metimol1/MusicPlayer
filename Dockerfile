FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3 python3-pip ffmpeg -y
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -r requirements.txt
RUN mkdir /MusicPlayer
WORKDIR /MusicPlayer
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
