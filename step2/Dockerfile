FROM alpine:latest

RUN apk add --no-cache wget unzip

RUN wget --no-check-certificate -q -O /tmp/consul.zip \
    https://releases.hashicorp.com/consul/0.8.4/consul_0.8.4_linux_amd64.zip

RUN unzip /tmp/consul.zip -d /usr/local/bin/

RUN rm /tmp/consul.zip

CMD ["/usr/local/bin/consul", "agent", "--data-dir", "/tmp/consul", "--server", "--bootstrap"]
