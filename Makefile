NAME=npm

.PHONY: start stop

build: Dockerfile
	docker build -t ${NAME}  --build-arg http_proxy --build-arg https_proxy .

run:
	@echo $(filter-out $@,$(MAKECMDGOALS))
	docker run --rm -v `pwd` -e http_proxy=${http_proxy} -e https_proxy=${https_proxy}  ${NAME}  $(filter-out $@,$(MAKECMDGOALS))
