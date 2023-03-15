# Light-weight Data Science Template

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/MoritzM00/python-template/main.svg)](https://results.pre-commit.ci/latest/github/MoritzM00/python-template/main)
[![Tests](https://github.com/MoritzM00/python-template/actions/workflows/test.yaml/badge.svg)](https://github.com/MoritzM00/python-template/actions/workflows/test.yaml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)][pre-commit]
[![Black](https://img.shields.io/badge/code%20style-black-000000.svg)][black]

[pre-commit]: https://github.com/pre-commit/pre-commit
[black]: https://github.com/psf/black

Light-weight Python Template for Data Science and Machine Learning

## Quick Start

Below you can find the quick start guide for development.

### Set up the environment

1. Install [Poetry](https://python-poetry.org/docs/#installation)
2. Authorize the Pre-Commit CI App by following the login link here: <https://pre-commit.ci/>
   This will allow the CI to run the pre-commit hooks on your repository.
3. Set up the environment:

```bash
make setup
make activate
```

### Install new packages

To install new PyPI packages, run:

```bash
poetry add <package-name>
```

### Documentation

The Documentation is deployed to GitHub Pages when a Tag is included in the commit.
You can do this easily by running:

```bash
poetry version <patch|minor|major>
```

To view the documentation locally, run:

```bash
make docs_view
```
