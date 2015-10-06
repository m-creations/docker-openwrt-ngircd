docker-openwrt-ngircd
=====================

An image based on OpenWrt x86_64 which runs an Internet Relay Chat (IRC) server.

How to use
----------

The simplest case is to specify server name, info and message of the
day when starting the container:

```
docker run -p 6667:6667 -e SERVER_NAME=irc.test.com -e SERVER_INFO="Test.com's IRC server" -e MOTD="Welcome to Test IRC server" mcreations/openwrt-ngircd
```

Now, you can connect to this docker instance with any IRC client on
port 6667 (default port).

Github Repo
-----------

https://github.com/m-creations/docker-openwrt-ngircd

