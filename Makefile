build: 
	$(MAKE) -C consignment-cli build
	$(MAKE) -C consignment-service build
	$(MAKE) -C vessel-service build
	$(MAKE) -C user-service build
	$(MAKE) -C user-cli build
	docker-compose build
	$(MAKE) -C consignment-cli clear
	$(MAKE) -C consignment-service clear
	$(MAKE) -C vessel-service clear
	$(MAKE) -C user-service clear
	$(MAKE) -C user-cli clear

run:
	docker-compose up