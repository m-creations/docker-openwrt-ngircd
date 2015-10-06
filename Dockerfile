## -*- docker-image-name: "mcreations/openwrt-ngircd" -*-

FROM mcreations/openwrt-x64
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ENV SERVER_NAME irc.example.com
ENV SERVER_INFO "Example Inc IRC server"
ENV MOTD "Welcome to Example Inc's IRC chat!"

ADD image/root/ /

RUN opkg update &&\
    opkg install ngircd &&\
    rm /tmp/opkg-lists/*

EXPOSE 6667

CMD ["/start-ircd"]
