PY_SOURCE=.

lint:
	@ruff check ${PY_SOURCE}

format:
	@ruff check --fix ${PY_SOURCE}
	@ruff format ${PY_SOURCE}

clean:
	@-rm -rf dist build */__pycache__ *.egg-info

build:
	@pdm build

publish: build
	@pdm publish

test:
	@pytest -v tests

.PHONY: lint format clean build publish test
