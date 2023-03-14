initialize_git:
	git init

install:
	poetry install
	poetry run pre-commit install

activate:
	poetry shell

setup: initialize_git install download_data

test:
	poetry run pytest

docs_view:
	poetry run pdoc src --http localhost:8080

docs_save:
	poetry run pdoc src -f -o docs
