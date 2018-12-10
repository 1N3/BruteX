FROM ubuntu:16.04
WORKDIR /usr/share/
RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list \
	&& echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list \
	&& apt-get update && apt-get install -y --allow-unauthenticated git \
																	nmap \
																	hydra \
																	dnsenum\
	&& git clone https://github.com/1N3/BruteX.git brutex \
	&& chmod +x brutex/brutex \
	&& ln -s /usr/share/brutex/brutex /usr/bin/brutex

WORKDIR brutex
ENTRYPOINT ["./brutex"]

