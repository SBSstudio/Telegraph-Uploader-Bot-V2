FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/SBSstudio/Telegraph-Uploader-Bot-V2
RUN cd Telegraph-Uploader-Bot-V2
WORKDIR /Telegraph-Uploader-Bot-V2
RUN pip3 install -U -r requirements.txt
CMD python3 main.py
