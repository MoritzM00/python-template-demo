initialize_git:
	git init

create-env:
	conda create --name $(env_name) --file conda-$(os).lock

update-env:
	@echo "Re-generate Conda lock file(s) based on environment.yml"
	@conda-lock -k explicit --conda mamba
	@echo "Update Conda packages based on re-generated lock file"
	@mamba update --file conda-$(os).lock
	@echo "Update Poetry packages and re-generate poetry.lock"
	@poetry update

install:
	poetry install

test:
	poetry run pytest

docs_view:
	poetry run pdoc src --http localhost:8080

docs_save:
	poetry run pdoc src -f -o docs

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache
