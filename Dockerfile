FROM sdhibit/rpi-raspbian

MAINTAINER Thomas Dannenmuller

RUN apt-get -y update && \
    apt-get -yq install --no-install-recommends ddclient && \
    apt-get autoclean

CMD ["-foreground"]
ENTRYPOINT ["/usr/sbin/ddclient"]
