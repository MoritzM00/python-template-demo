# Demo for the light-weight Python Template

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/MoritzM00/python-template-demo/main.svg)](https://results.pre-commit.ci/latest/github/MoritzM00/python-template-demo/main)
[![Tests](https://github.com/MoritzM00/python-template-demo/actions/workflows/test.yaml/badge.svg)](https://github.com/MoritzM00/python-template-demo/actions/workflows/test.yaml)
[![Docs](https://github.com/MoritzM00/python-template-demo/actions/workflows/deploy.yaml/badge.svg)](https://github.com/MoritzM00/python-template-demo/actions/workflows/deploy.yaml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)][pre-commit]
[![Black](https://img.shields.io/badge/code%20style-black-000000.svg)][black]

[pre-commit]: https://github.com/pre-commit/pre-commit
[black]: https://github.com/psf/black

This is a demo repository of the Light-weight Python Template.
It contains a minimal set of files to get started with a new python project. It does not force you to use any data-science specific libraries, but provides a set of tools that are useful for most projects.

It is intended to be used for Data Science and Machine Learning projects with small to medium sized modules.

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

The Documentation is automacially deployed to GitHub Pages.

To view the documentation locally, run:

```bash
make docs_view
```
