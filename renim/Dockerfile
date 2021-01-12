#ckerfile for cpuminer
# usage: docker run /cpuminer --url xxxx --user xxxx --pass xxxx
# ex: docker run bitcrypto/rpi-cpuminer-multi --algo [ALGORITHM] --url stratum+tcp://[URL]:[PORT] --user [USERNAME] --pass [PASSWORD]
#
# If you wish to donate BTC to help me continue my efforts please send to this address: 1EZiDpMT8GgDQXcuyZZD7bR5Nydtw3GeU


FROM            sdhibit/rpi-raspbian
MAINTAINER      Elvis Nuno <admin@bitcryp.to>

RUN             apt-get update -qq && apt-get install -y \
			automake \
			m4 \
			libcurl4-openssl-dev \
			libjansson-dev \
			libssl-dev \
			git \
			build-essential

RUN             git clone https://github.com/IT-Berater/cpuminer-multi.git

WORKDIR         /cpuminer-multi
#RUN            ./autogen.sh
#RUN             cd cpuminer-multi && ./configure CFLAGS="-O3 -mfpu=neon" --with-crypto --with-curl
#RUN             cd cpuminer-multi && ./build.sh
RUN             ./build.sh

WORKDIR         /cpuminer-multi

COPY entrypoint.sh  entrypoint.sh
ENTRYPOINT [ "bash", "/cpuminer-multi/entrypoint.sh"]