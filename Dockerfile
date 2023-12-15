FROM golang:alpine as build

RUN apk add --no-cache git
WORKDIR /src
RUN git clone https://github.com/casdoor/traefik-casdoor-auth.git

# RUN go build cmd/webhook/main.go

FROM golang:alpine
COPY --from=build /src/traefik-casdoor-auth /src/traefik-casdoor-auth

RUN mkdir -p /config
WORKDIR /src/traefik-casdoor-auth
COPY init.sh .

ENTRYPOINT ["/src/traefik-casdoor-auth/init.sh"]

EXPOSE 9999
