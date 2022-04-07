FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt-get -qq update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -qq install -y tzdata aria2 git python3 python3-pip \
    locales python3-lxml \
    curl pv jq ffmpeg \
    p7zip-full p7zip-rar \


COPY requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["bash","start.sh"]
