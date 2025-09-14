TARGET_DIR ?= $(CURDIR)

DOCKER_COMPOSE := docker compose -f docker-compose.yml

DOCKER_COMPOSE_RUN = $(DOCKER_COMPOSE) run --rm -v "$(TARGET_DIR):/tmp/output" tooling

versions:
	$(DOCKER_COMPOSE_RUN) sh -c '\
		echo "Terraform: \"$$(terraform version | head -n1)"\"; \
		echo "Docker: $$(docker version --format \"{{.Client.Version}}\")"; \
		echo "Make: \"$$(make --version | head -n1)"\"'
.PHONY: versions
