PY_SOURCE=.

lint:
	@uv run ruff check ${PY_SOURCE}

format:
	@uv run ruff check --fix ${PY_SOURCE}
	@uv run ruff format ${PY_SOURCE}

clean:
	@-rm -rf dist build */__pycache__ *.egg-info

build:
	@uv build

publish: build
	@uv publish

test:
	@uv run pytest -v tests

.PHONY: lint format clean build publish test
