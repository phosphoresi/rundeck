# Dockerfile for rundeck
# https://github.com/jjethwa/rundeck

FROM jordan/rundeck:3.0.13

RUN apt-get -qq update && \
    apt-get install -qqy python-websocket python-requests python-dateutil && \
    apt-get clean && rm -rf /var/lib/apt/lists/*




