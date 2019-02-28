build:
	GOOS=linux GOARCH=amd64 go build

clear:
	rm user-cli

run:
	docker run -e MICRO_REGISTRY=mdns user-cli