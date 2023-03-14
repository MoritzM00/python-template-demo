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
	PYTHONPATH=src pdoc src --http localhost:8080

docs_save:
	PYTHONPATH=src pdoc src -f -o docs
