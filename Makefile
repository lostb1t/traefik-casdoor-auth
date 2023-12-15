build:
	docker build -t ghcr.io/lostb1t/traefik-casdoor-auth:latest .

push:
	docker push ghcr.io/lostb1t/traefik-casdoor-auth:latest
