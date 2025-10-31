start: ## Start Lamp containers
	docker network create lamp-network || true
	docker compose up -d --force-recreate

down: ## Stop all lamp containers
	docker compose down

restart: ## Restart Lamp Containers
	$(MAKE) down && $(MAKE) start

clear-redis: ## Clear redis cache
	docker exec -it lamp-redis redis-cli FLUSHALL
