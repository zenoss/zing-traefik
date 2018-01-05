FROM traefik:1.4.6-alpine

# development tools
RUN apk add --no-cache bind-tools curl bash

RUN addgroup -S traefik && adduser -S -g traefik traefik
USER traefik

COPY ./traefik.toml /etc/traefik/traefik.toml

