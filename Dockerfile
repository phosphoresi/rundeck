# Dockerfile for rundeck

FROM rundeck/rundeck:3.2.5
USER root
RUN apt-get -qq update && \
    apt-get install -qqy python-websocket python-requests python-dateutil python-pip nano vim && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install urllib3==1.23 kubernetes cachetools==3.1.1

RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN dpkg-reconfigure tzdata

USER rundeck
COPY --chown=rundeck:root ./libext ./libext

