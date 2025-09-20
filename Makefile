TARGET_DIR ?= $(CURDIR)

DOCKER_COMPOSE := docker-compose -f docker-compose.yml

DOCKER_COMPOSE_RUN = $(DOCKER_COMPOSE) run --rm -v "$(TARGET_DIR):/tmp/output" cookiecutter

test: #Generates test repository
	$(DOCKER_COMPOSE_RUN) cookiecutter --no-input .
.PHONY: test

clean:
	docker-compose run cookiecutter sh -c "rm -rf '/tmp/output/terraform-repository'" \
	&& docker-compose down --remove-orphans --rmi 'local'
.PHONY: clean

generate: #Generates repository interactively
	$(DOCKER_COMPOSE_RUN) cookiecutter -f .
.PHONY: generate

