docker-openwrt-ngircd
=====================

An image based on OpenWrt x86_64 which runs an Internet Relay Chat (IRC) server.

How to use
----------

The simplest case is to specify the operator password for the
(built-in) operator 'TheOperator'.

```
docker run -p 6667:6667 -e OP_PASS=FV4gNksh mcreations/openwrt-ngircd
```

Now, you can connect to this docker instance with any IRC client on
port 6667 (default port).

You can of course set some 'branding' information like server name,
info and message of the day when starting the container:

```
docker run -p 6667:6667 -e OP_PASS=FV4gNksh -e SERVER_NAME=irc.test.com -e SERVER_INFO="Test.com's IRC server" -e MOTD="Welcome to Test IRC server" mcreations/openwrt-ngircd
```

Supported parameters are:

* `SERVER_NAME`: the DNS host name of the server, as visible to outside users
* `SERVER_INFO`: short descriptive info about the server
* `MOTD`: message of the day
* `OP_NAME`: name of the operator (default: `TheOperator`)
* `OP_PASS`: password for connecting as operator

Github Repo
-----------

https://github.com/m-creations/docker-openwrt-ngircd

