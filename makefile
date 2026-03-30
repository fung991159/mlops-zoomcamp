# Colors
CYAN  := \033[1;36m
RESET := \033[0m


# Help
.PHONY: help
help: ## Show this help
	@printf "$(CYAN)Available targets:$(RESET)\n"
	@grep -E '^[a-zA-Z_-]+:.*##' $(MAKEFILE_LIST) | sed 's/:.*##/ - /'

# Jupyter Lab
.PHONY: lab
lab: ## Run Jupyter Lab via uv
	uv run --with jupyter jupyter lab