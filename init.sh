#!/bin/sh
if ! test -f /config/plugin.json; then
  echo "{\"casdoorEndpoint\": \"$CASDOOR_ENDPOINT\", \"casdoorClientId\": \"$CASDOOR_ClIENT_ID\", \"casdoorClientSecret\": \"$CASDOOR_CLIENT_SECRET\", \"casdoorOrganization\": \"$CASDOOR_ORGANIZATION\", \"casdoorApplication\": \"$CASDOOR_APPLICATION\", \"pluginEndPoint\": \"$PLUGIN_ENDPOINT\"}" > /config/plugin.json
fi

./webhook -configFile="/config/plugin.json"