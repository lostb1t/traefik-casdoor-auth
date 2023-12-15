# traefik-casdoor-auth

Optmized webhook image for the treafik casedoor auth plugin

Either mount the plugin config to /data/plugin.conf or set it with env variable

```
CASDOOR_ENDPOINT
CASDOOR_ClIENT_ID
CASDOOR_CLIENT_SECRET
CASDOOR_ORGANIZATION
CASDOOR_APPLICATION
PLUGIN_ENDPOINT
```

Image can be found at `ghcr.io/lostb1t/traefik-casdoor-auth:latest`