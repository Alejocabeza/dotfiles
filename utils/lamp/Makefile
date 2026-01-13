start: ## Start Lamp containers
	docker network create lamp-network || true
	docker compose up -d --build

down: ## Stop all lamp containers
	docker compose down

restart: ## Restart Lamp Containers
	$(MAKE) down && $(MAKE) start

clear-redis: ## Clear redis cache
	docker exec -it lamp-redis redis-cli FLUSHALL

backup-pgsql: ## Backup PostgreSQL databases
	docker exec -t -e PGPASSWORD=root lamp-pgsql pg_dumpall -c -U root > dump_pgsql_$(shell date +%Y%m%d_%H%M%S).sql

backup-pgsql-db: ## Backup specific PostgreSQL database (Usage: make backup-pgsql-db DB=mydb)
	@if [ -z "$(DB)" ]; then echo "Error: Please specify the database name using DB=... (e.g., make backup-pgsql-db DB=n8n)"; exit 1; fi
	docker exec -t -e PGPASSWORD=root lamp-pgsql pg_dump -U root $(DB) > dump_$(DB)_$(shell date +%Y%m%d_%H%M%S).sql
