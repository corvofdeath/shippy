
build:
	protoc -I. --plugin=protoc-gen-go=$(GOPATH)/bin/protoc-gen-go --plugin=protoc-gen-micro=$(GOPATH)/bin/protoc-gen-micro --proto_path=$(GOPATH)/src:. --micro_out=. --go_out=. proto/consignment/consignment.proto
	docker build -t consignment-service .

run: 
	docker run -p 50051:50051 \
        -e MICRO_SERVER_ADDRESS=:50051 \
        -e MICRO_REGISTRY=mdns consignment-service