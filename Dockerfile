FROM hypriot/rpi-alpine-scratch:v3.4
MAINTAINER Stefan Biermann

RUN apk add --update supervisor\
        && rm -rf /var/cache/apk/*
COPY entrypoint.sh /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]
