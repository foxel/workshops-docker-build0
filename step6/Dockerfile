FROM alpine:latest

RUN apk add --no-cache wget && mkdir -p /data

RUN echo $(date) > /data/date && \
    wget --no-check-certificate -q -O /data/rates.json \
        https://alfabank.ru/ext-json/0.2/exchange/cash/

CMD cat /data/date /data/rates.json
