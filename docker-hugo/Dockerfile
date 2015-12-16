FROM gliderlabs/alpine:latest
MAINTAINER Johannes Mitlmeier <dev.jojomi@yahoo.com>

ENV HUGO_VERSION=0.15
RUN apk add --update wget ca-certificates bash rsync && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_linux_amd64.tar.gz && \
  mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo && \
  rm -r hugo_${HUGO_VERSION}_linux_amd64 && \
  wget http://nl.alpinelinux.org/alpine/edge/testing/x86_64/entr-3.3-r0.apk && apk add --allow-untrusted entr-3.3-r0.apk && \
  rm -fr entr-3.3-r0.apk && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

COPY ./run.sh /src/run.sh

# VOLUME /src
# VOLUME /output
VOLUME /var/www/html

WORKDIR /src
CMD ["./run.sh"]

EXPOSE 1313
