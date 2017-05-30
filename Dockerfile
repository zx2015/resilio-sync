FROM debian:stretch
MAINTAINER Zhou Xin <xin.zhou.hziee@hotmail.com>

RUN export DEBIAN_FRONTEND='noninteractive' && \
    apt-get update -qq  && \
    apt-get install -qqy wget gnupg && \
    apt-get -s dist-upgrade -y

RUN apt-get update -qq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/*

COPY rslsync /usr/bin/rslsync
RUN mkdir /etc/resilio-sync
RUN mkdir /var/lib/resilio-sync
COPY config.json /etc/resilio-sync/config.json
COPY resilio.sh /resilio.sh

RUN chmod a+x /resilio.sh
RUN mkdir -p /var/run/resilio-sync

VOLUME /sync
EXPOSE 8888

CMD ["/resilio.sh"]
