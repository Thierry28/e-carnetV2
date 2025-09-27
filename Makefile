# Makefile for e-carnet V2 Documentation

# Variables
PYTHON := python3
PIP := pip3
NODE := node
NPM := npm
MKDOCS := mkdocs
SITE_DIR := site
DOCS_DIR := docs

# Colors for output
BOLD := \033[1m
RED := \033[31m
GREEN := \033[32m
YELLOW := \033[33m
BLUE := \033[34m
RESET := \033[0m

.PHONY: help install install-python install-node dev build build-clean deploy clean lint lint-fix validate test serve serve-public pdf status

# Default target
help: ## Show this help message
	@echo "$(BOLD)e-carnet V2 Documentation$(RESET)"
	@echo "Available targets:"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  $(BLUE)%-15s$(RESET) %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Installation targets
install: install-python install-node ## Install all dependencies

install-python: ## Install Python dependencies
	@echo "$(YELLOW)Installing Python dependencies...$(RESET)"
	$(PIP) install -r $(DOCS_DIR)/requirements.txt
	@echo "$(GREEN)Python dependencies installed$(RESET)"

install-node: ## Install Node.js dependencies (optional)
	@echo "$(YELLOW)Installing Node.js dependencies...$(RESET)"
	$(NPM) install
	@echo "$(GREEN)Node.js dependencies installed$(RESET)"

# Development targets
dev: ## Start development server
	@echo "$(YELLOW)Starting development server...$(RESET)"
	@echo "$(BLUE)Documentation will be available at http://127.0.0.1:8000$(RESET)"
	$(MKDOCS) serve

serve: dev ## Alias for dev

serve-public: ## Start development server accessible from network
	@echo "$(YELLOW)Starting public development server...$(RESET)"
	@echo "$(BLUE)Documentation will be available at http://0.0.0.0:8000$(RESET)"
	$(MKDOCS) serve --dev-addr=0.0.0.0:8000

# Build targets
build: ## Build documentation
	@echo "$(YELLOW)Building documentation...$(RESET)"
	$(MKDOCS) build
	@echo "$(GREEN)Documentation built in $(SITE_DIR)/$(RESET)"

build-clean: ## Build documentation with clean cache
	@echo "$(YELLOW)Building documentation (clean)...$(RESET)"
	$(MKDOCS) build --clean
	@echo "$(GREEN)Documentation built in $(SITE_DIR)/$(RESET)"

validate: ## Build with strict validation
	@echo "$(YELLOW)Validating documentation build...$(RESET)"
	$(MKDOCS) build --strict
	@echo "$(GREEN)Documentation validation passed$(RESET)"

# Deployment targets
deploy: ## Deploy to GitHub Pages
	@echo "$(YELLOW)Deploying to GitHub Pages...$(RESET)"
	$(MKDOCS) gh-deploy
	@echo "$(GREEN)Deployed to GitHub Pages$(RESET)"

# PDF generation
pdf: ## Generate PDF version (requires mkdocs-with-pdf)
	@echo "$(YELLOW)Generating PDF...$(RESET)"
	$(MKDOCS) build --config-file mkdocs-pdf.yml || $(MKDOCS) build
	@echo "$(GREEN)PDF generated$(RESET)"

# Maintenance targets
clean: ## Clean generated files
	@echo "$(YELLOW)Cleaning generated files...$(RESET)"
	rm -rf $(SITE_DIR)/
	rm -rf .mkdocs_cache/
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete
	@echo "$(GREEN)Cleaned$(RESET)"

# Linting and quality
lint: ## Check Markdown files
	@echo "$(YELLOW)Linting Markdown files...$(RESET)"
	@if command -v markdownlint >/dev/null 2>&1; then \
		markdownlint $(DOCS_DIR)/**/*.md README.md CONTRIBUTING.md DEVELOPMENT.md CHANGELOG.md; \
		echo "$(GREEN)Markdown linting completed$(RESET)"; \
	else \
		echo "$(RED)markdownlint not found. Install with: npm install$(RESET)"; \
		exit 1; \
	fi

lint-fix: ## Fix Markdown files automatically
	@echo "$(YELLOW)Fixing Markdown files...$(RESET)"
	@if command -v markdownlint >/dev/null 2>&1; then \
		markdownlint --fix $(DOCS_DIR)/**/*.md README.md CONTRIBUTING.md DEVELOPMENT.md CHANGELOG.md; \
		echo "$(GREEN)Markdown files fixed$(RESET)"; \
	else \
		echo "$(RED)markdownlint not found. Install with: npm install$(RESET)"; \
		exit 1; \
	fi

# Script utilities
scripts-clean-comments: ## Remove comments from MD files
	@echo "$(YELLOW)Removing comments from Markdown files...$(RESET)"
	./scripts/removeCommentsInMDfiles.sh
	@echo "$(GREEN)Comments removed$(RESET)"

scripts-clean-paths: ## Fix relative paths in MD files
	@echo "$(YELLOW)Fixing relative paths in Markdown files...$(RESET)"
	./scripts/removeDotDotSlashInMDfiles.sh
	@echo "$(GREEN)Paths fixed$(RESET)"

scripts-create-files: ## Create new documentation files
	@echo "$(YELLOW)Running create files script...$(RESET)"
	./scripts/createNewFiles.sh
	@echo "$(GREEN)Files created$(RESET)"

# Testing
test: validate lint ## Run all tests and validations
	@echo "$(GREEN)All tests passed$(RESET)"

# Status and info
status: ## Show project status
	@echo "$(BOLD)e-carnet V2 Documentation Status$(RESET)"
	@echo "$(BLUE)Python version:$(RESET) $$($(PYTHON) --version 2>/dev/null || echo 'Not found')"
	@echo "$(BLUE)Node.js version:$(RESET) $$($(NODE) --version 2>/dev/null || echo 'Not found')"
	@echo "$(BLUE)MkDocs version:$(RESET) $$($(MKDOCS) --version 2>/dev/null || echo 'Not found')"
	@echo "$(BLUE)Site directory:$(RESET) $(SITE_DIR)/"
	@echo "$(BLUE)Documentation directory:$(RESET) $(DOCS_DIR)/"
	@if [ -d "$(SITE_DIR)" ]; then \
		echo "$(BLUE)Site size:$(RESET) $$(du -sh $(SITE_DIR) | cut -f1)"; \
	else \
		echo "$(BLUE)Site:$(RESET) Not built"; \
	fi
	@echo "$(BLUE)Markdown files:$(RESET) $$(find $(DOCS_DIR) -name '*.md' | wc -l | tr -d ' ')"

# Quick start
quickstart: install build serve ## Quick start: install, build, and serve

# CI targets
ci-install: ## Install dependencies for CI
	$(PIP) install -r $(DOCS_DIR)/requirements.txt

ci-test: ## Run CI tests
	$(MKDOCS) build --strict

ci-deploy: ## Deploy in CI environment
	$(MKDOCS) gh-deploy --force

# Check dependencies
check-deps: ## Check if required dependencies are installed
	@echo "$(YELLOW)Checking dependencies...$(RESET)"
	@command -v $(PYTHON) >/dev/null 2>&1 || { echo "$(RED)Python 3 is required$(RESET)"; exit 1; }
	@command -v $(MKDOCS) >/dev/null 2>&1 || { echo "$(RED)MkDocs is required. Run: make install-python$(RESET)"; exit 1; }
	@echo "$(GREEN)All required dependencies are installed$(RESET)"