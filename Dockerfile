FROM telegraf:latest

MAINTAINER Michael Boehm

RUN apt-get update && \
    apt-get dist-upgrade && \
    apt-get install -y --no-install-recommends \
    python3 \
    python3-pip && \
    /usr/bin/python3 -m pip install --upgrade pip && \
    /usr/bin/python3 -m pip install requests && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/
