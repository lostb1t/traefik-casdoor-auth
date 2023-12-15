# traefik-casdoor-auth

Optmized [webhook](https://github.com/casdoor/traefik-casdoor-auth#start-the-webhook) image for the [treafik casedoor auth plugin](https://github.com/casdoor/traefik-casdoor-auth).

Either mount the [plugin config](https://github.com/casdoor/traefik-casdoor-auth#223-webhook-configuration-fileconfpluginjson) to /config/plugin.json or set the config with env variable:

```
CASDOOR_ENDPOINT
CASDOOR_ClIENT_ID
CASDOOR_CLIENT_SECRET
CASDOOR_ORGANIZATION
CASDOOR_APPLICATION
PLUGIN_ENDPOINT
```

Image can be found at `ghcr.io/lostb1t/traefik-casdoor-auth:latest`