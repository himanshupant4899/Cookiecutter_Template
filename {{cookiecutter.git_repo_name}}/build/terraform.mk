TERRAFORM_BIN=terraform -chdir=terraform

terraform_init: dotenv
	$(DOCKER_COMPOSE_TOOLING) make _terraform_init
.PHONY: terraform_init

_terraform_init:
	$(TERRAFORM_BIN) init
.PHONY: _terraform_init

terraform_validate:
	$(DOCKER_COMPOSE_TOOLING) make _terraform_validate
.PHONY: terraform_validate

_terraform_validate:
	$(TERRAFORM_BIN) validate
.PHONY: _terraform_validate

terraform_plan: dotenv
	$(DOCKER_COMPOSE_TOOLING) make _terraform_plan
.PHONY: terraform_plan

_terraform_plan:
	$(TERRAFORM_BIN) plan
.PHONY: _terraform_plan

terraform_apply: dotenv
	$(DOCKER_COMPOSE_TOOLING) make _terraform_apply
.PHONY: terraform_apply

_terraform_apply:
	$(TERRAFORM_BIN) apply
.PHONY: _terraform_apply

terraform_reconfigure:
	$(DOCKER_COMPOSE_TOOLING) make _terraform_reconfigure
.PHONY: terraform_reconfigure

_terraform_reconfigure:
	$(TERRAFORM_BIN) reconfigure
.PHONY: _terraform_reconfigure

terraform_migrate_state: dotenv
	$(DOCKER_COMPOSE_TOOLING) make _terraform_migrate_state
.PHONY: terraform_migrate_state

_terraform_migrate_state:
	$(TERRAFORM_BIN) init migrate state
.PHONY: _terraform_migrate_state

terraform_version:
	$(DOCKER_COMPOSE_TOOLING) make _terraform_version
.PHONY: terraform_version

_terraform_version:
	$(TERRAFORM_BIN) --version
.PHONY: _terraform_version