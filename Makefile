.PHONY: bash
bash: ## container へのログイン
	docker compose up -d
	docker compose exec gas-app bash
