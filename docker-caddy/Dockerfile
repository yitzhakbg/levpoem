FROM gliderlabs/alpine:latest
MAINTAINER Johannes Mitlmeier <dev.jojomi@yahoo.com>

ENV CADDY_VERSION=0.7.6
RUN apk add --update wget ca-certificates bash && \
  wget https://github.com/mholt/caddy/releases/download/v${CADDY_VERSION}/caddy_linux_amd64.tar.gz && \
  tar xzf caddy_linux_amd64.tar.gz && \
  rm -r caddy_linux_amd64.tar.gz CHANGES.txt LICENSES.txt README.txt && \
  mv caddy /usr/bin && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

COPY Caddyfile .
EXPOSE 2015
USER  22015
WORKDIR /var/www/html
CMD ["/usr/bin/caddy"]
