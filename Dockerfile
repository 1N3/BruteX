FROM kalilinux/kali-rolling

LABEL org.label-schema.name='BruteX - Kali Linux' \
    org.label-schema.description='Automatically brute force all services running on a target. ' \
    org.label-schema.usage='https://github.com/1N3/BruteX' \
    org.label-schema.url='https://github.com/1N3/BruteX' \
    org.label-schema.vendor='https://sn1persecurity.com' \
    org.label-schema.schema-version='1.0' \
    org.label-schema.docker.cmd.devel='docker run --rm -ti xer0dayz/brutex' \
    MAINTAINER="@xer0dayz"

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

ENV DEBIAN_FRONTEND noninteractive

RUN set -x \
        && apt-get -yqq update \
        && apt-get -yqq dist-upgrade \
        && apt-get clean

RUN apt-get --yes install git \
    && cd /tmp \
    && git clone https://github.com/1N3/BruteX.git \
    && cd BruteX \
    && ./install.sh \
    && brutex

CMD ["brutex"]
