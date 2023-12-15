FROM golang:alpine as build

RUN apk add --no-cache git
WORKDIR /src
RUN git clone https://github.com/casdoor/traefik-casdoor-auth.git

FROM golang:alpine
COPY --from=build /src/traefik-casdoor-auth /src/traefik-casdoor-auth

RUN mkdir -p /config
RUN echo "{\"casdoorEndpoint\": \"$CASDOOR_ENDPOINT\", \"casdoorClientId\": \"$CASDOOR_ClIENT_ID\", \"casdoorClientSecret\": \"$CASDOOR_CLIENT_SECRET\", \"casdoorOrganization\": \"$CASDOOR_ORGANIZATION\", \"casdoorApplication\": \"$CASDOOR_APPLICATION\", \"pluginEndPoint\": \"$PLUGIN_ENDPOINT\"}" > /config/plugin.json

WORKDIR /src/traefik-casdoor-auth

CMD go run cmd/webhook/main.go -configFile="/config/plugin.json"

EXPOSE 9999
