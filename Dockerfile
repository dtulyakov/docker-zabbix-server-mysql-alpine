FROM zabbix/zabbix-server-mysql:alpine-3.4-latest
LABEL maintainer "Denis Tulyakov <dtulyakov@gmail.com>"

RUN apk update \
    && apk add -q --clean-protected --no-cache \
            curl \
    && rm -rf /var/cache/apk/*

