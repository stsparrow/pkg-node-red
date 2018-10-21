# pkg-node-red

[![Build Status](https://www.travis-ci.com/imZack/pkg-node-red.svg?branch=master)](https://www.travis-ci.com/imZack/pkg-node-red)

PKG version of Node-Red

## Usage

- Run armv7 version of node-red

```shell
./node-red-linux-armv7 --settings settings.js --userDir data
```

Current restriction: Must assign the settings file manually.

### Misc

- Generate a self-signed certification

```shell
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 3650 \
  -subj "/C=US/ST=Oregon/L=Portland/O=Company Name/OU=Org/CN=www.example.com" \
  -sha256 -nodes
```