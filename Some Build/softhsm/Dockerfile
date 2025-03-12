FROM ubuntu:22.04

LABEL maintainer="hoanbc@outlook.com"

RUN apt-get update -y
RUN apt-get install -y \
    build-essential \
    libssl-dev \
    pkg-config \
    git \
    cmake \
    wget \
    curl \
    automake \
    autoconf \
    libtool \
    unzip \
    libengine-pkcs11-openssl \
    && apt-get clean

RUN wget https://github.com/softhsm/SoftHSMv2/archive/refs/heads/develop.zip \
    && unzip develop.zip \
    && cd SoftHSMv2-develop \
    && sh autogen.sh  \ 
    && ./configure \
    && make \
    && make install

RUN apt remove -y \
	git \
	wget

RUN useradd -m -s /bin/bash softhsm

RUN mkdir -p /var/lib/softhsm/tokens

ENV SOFTHSM2_CONF=/etc/softhsm2.conf

RUN chown softhsm:softhsm /etc/softhsm2.conf
RUN chown softhsm:softhsm -R /var/lib/softhsm

USER softhsm

EXPOSE 5000

CMD tail -f /dev/null
#CMD ["softhsm2-util", "--init-token", "--slot", "0", "--label", "MySoftHSM" , "--so-pin" , "1234" , "--pin" , "12345678"]
