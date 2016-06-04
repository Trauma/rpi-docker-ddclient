FROM resin/rpi-raspbian

MAINTAINER Thomas Dannenmuller

ONBUILD ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -yq install --no-install-recommends ddclient && \
    apt-get autoclean && \
    rm /etc/ddclient.conf

COPY ddclient.conf /etc/

CMD ["-foreground"]

ENTRYPOINT ["/usr/sbin/ddclient"]
