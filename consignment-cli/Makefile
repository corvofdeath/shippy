build:
	GOOS=linux GOARCH=amd64 go build

clear:
	rm consignment-cli

run:
	docker run -e MICRO_REGISTRY=mdns consignment-cli