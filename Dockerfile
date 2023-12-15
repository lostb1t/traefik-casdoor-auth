FROM golang:alpine as build

RUN apk add --no-cache git
WORKDIR /src
RUN git clone https://github.com/casdoor/traefik-casdoor-auth.git
WORKDIR /src/traefik-casdoor-auth/cmd/webhook
RUN GIN_MODE=release go build

FROM alpine
COPY --from=build /src/traefik-casdoor-auth/cmd/webhook/webhook /src/webhook

RUN mkdir -p /config
WORKDIR /src
COPY init.sh .

ENTRYPOINT ["/src/init.sh"]

EXPOSE 9999
