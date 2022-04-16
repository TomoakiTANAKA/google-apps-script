.PHONY: bash
bash: ## container へのログイン
	docker compose up -d
	docker compose exec gas-app bash

.PHONY: clean
clean: ## container キレイキレイ
	docker compose down --rmi all --volumes --remove-orphans
