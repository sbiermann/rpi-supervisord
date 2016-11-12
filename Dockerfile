FROM hypriot/rpi-alpine-scratch:v3.4
MAINTAINER Stefan Biermann

RUN apk add --update supervisor\
        && rm -rf /var/cache/apk/*


ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
