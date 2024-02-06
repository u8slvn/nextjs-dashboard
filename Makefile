.DEFAULT_GOAL := help

.PHONY: help
help: ## List all the command helps.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: test
test: ## Run tests.
	@echo "test"

.PHONY: lint
lint: ## Check linter.
	@npm run prettier

.PHONY: dev
dev: ## Run dev server.
	@npm run dev
