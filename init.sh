#!/bin/sh
echo "{\"casdoorEndpoint\": \"$CASDOOR_ENDPOINT\", \"casdoorClientId\": \"$CASDOOR_ClIENT_ID\", \"casdoorClientSecret\": \"$CASDOOR_CLIENT_SECRET\", \"casdoorOrganization\": \"$CASDOOR_ORGANIZATION\", \"casdoorApplication\": \"$CASDOOR_APPLICATION\", \"pluginEndPoint\": \"$PLUGIN_ENDPOINT\"}" > /config/plugin.json
go run cmd/webhook/main.go -configFile="/config/plugin.json"