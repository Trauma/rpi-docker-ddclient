FROM sdhibit/rpi-raspbian

MAINTAINER Thomas Dannenmuller

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -yq install --no-install-recommends ddclient && \
    apt-get autoclean

CMD ["-foreground"]

ENTRYPOINT ["/usr/sbin/ddclient"]
