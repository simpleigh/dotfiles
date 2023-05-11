.PHONY: lint

lint:
	find bash -type f -print0 | xargs -0 shellcheck
