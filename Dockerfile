FROM zabbix/zabbix-server-mysql:alpine-5.0-latest

LABEL \
  org.label-schema.schema-version="5" \
  org.label-schema.vendor="dtulyakov"


RUN apk update \
    && apk add -q --clean-protected --no-cache \
            curl \
    && rm -rf /var/cache/apk/*
