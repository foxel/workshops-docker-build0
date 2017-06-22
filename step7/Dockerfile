FROM alpine:latest

RUN apk add --no-cache transmission-daemon

RUN mkdir -p /data/downloads /data/incomplete /etc/transmission

COPY settings.json /etc/transmission/

VOLUME ["/etc/transmission-daemon", "/data/downloads", "/data/incomplete"]

EXPOSE 9091 55555/tcp 55555/udp

CMD ["/usr/bin/transmission-daemon", "--foreground", "--config-dir", "/etc/transmission"]
