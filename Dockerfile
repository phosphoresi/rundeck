# Dockerfile for rundeck
# https://github.com/jjethwa/rundeck

FROM jordan/rundeck:3.0.13

RUN apt-get -qq update && \
    apt-get install -qqy python-websocket python-requests python-dateutil python-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install kubernetes


