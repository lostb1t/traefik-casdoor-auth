FROM golang:alpin

RUN apk add --no-cache git

WORKDIR /src

RUN git clone https://github.com/casdoor/traefik-casdoor-auth.git

WORKDIR /src/traefik-casdoor-auth

CMD go run cmd/webhook/main.go -configFile="/config/plugin.json"

EXPOSE 9999