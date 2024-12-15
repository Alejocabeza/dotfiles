start: ## Start Lamp containers
	docker network create lamp-network || true
	docker compose up -d

down: ## Stop all lamp containers
	docker compose down

restart: ## Restart Lamp Containers
	$(MAKE) down && $(MAKE) start
