current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# Docker Compose
.PHONY: start
start: CMD=up -d --build

.PHONY: stop
stop: CMD=stop

.PHONY: destroy
destroy: CMD=down

# Usage: `make doco CMD="ps --services"`
# Usage: `make doco CMD="build --parallel --pull --force-rm --no-cache"`
.PHONY: doco
doco start stop destroy:
	@docker-compose $(CMD)

.PHONY: restart
restart: destroy start