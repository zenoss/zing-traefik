FROM traefik:1.2-alpine

# development tools
RUN apk add --no-cache bind-tools curl bash

COPY ./traefik.toml /etc/traefik/traefik.toml