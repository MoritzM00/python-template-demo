initialize_git:
	git init

install:
	uv venv
	uv run pre-commit install
	uv pip install -e .

activate:
	source .venv/bin/activate

setup: initialize_git install activate

test:
	uv run pytest

docs_view:
	uv run pdoc template_demo --docformat numpy

docs_save:
	uv run pdoc template_demo -o docs --docformat numpy

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache
