FROM alpine:latest

# install nginx and remove default server configuration
RUN apk add --no-cache nginx && \
    rm /etc/nginx/conf.d/*.conf && \
    mkdir /run/nginx && \
    chown nginx:nginx /run/nginx


COPY browser.conf /etc/nginx/conf.d/
COPY start.sh /usr/local/bin/start

RUN chmod +x /usr/local/bin/start

EXPOSE 80

VOLUME ["/var/log/nginx", "/data"]

CMD ["/usr/local/bin/start"]
