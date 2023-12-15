FROM golang:alpine as build

RUN apk add --no-cache git
WORKDIR /src
RUN git clone https://github.com/casdoor/traefik-casdoor-auth.git

FROM golang:alpine
COPY --from=build /src/traefik-casdoor-auth /src/traefik-casdoor-auth

WORKDIR /src/traefik-casdoor-auth

CMD go run cmd/webhook/main.go -configFile="/config/plugin.json"

EXPOSE 9999