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
	PYTHONPATH=src pdoc --config show_source_code=False src --http localhost:8080

docs_save:
	PYTHONPATH=src pdoc src -o docs
