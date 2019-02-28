build:
	protoc --proto_path=$(GOPATH)/src:. --micro_out=. --go_out=. proto/user/user.proto
	GOOS=linux GOARCH=amd64 go build

clear:
	rm user-service

run:
	docker run -p 50051:50051 -e MICRO_SERVER_ADDRESS=:50051 -e MICRO_REGISTRY=mdns user-service