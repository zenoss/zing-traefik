# FYI - traefik:1.7.16 is the version we used for ZING-5402
# Confirmed via "docker run --rm -ti gcr.io/zing-registry-188222/zing-traefik:1.7 version"
FROM traefik:1.7-alpine

# development tools
RUN apk add --no-cache bind-tools curl bash

RUN addgroup -S zing && adduser -S -G zing -u 512 512
USER 512

COPY ./traefik.toml /etc/traefik/traefik.toml

