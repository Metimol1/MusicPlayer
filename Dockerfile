FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3 python3-pip ffmpeg -y
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt
RUN mkdir /MusicPlayer
WORKDIR /MusicPlayer
COPY main.py /main.py
CMD ["python3", "/main.py"]