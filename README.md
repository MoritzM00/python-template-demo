# A Demo for the light-weight python template

![Tests](https://img.shields.io/github/actions/workflow/status/MoritzM00/python-template-demo/test.yaml?style=flat-square&label=Tests)
![Docs](https://img.shields.io/github/actions/workflow/status/MoritzM00/python-template-demo/deploy_docs.yaml?style=flat-square&label=Docs)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white&style=flat-square)][pre-commit]
[![Black](https://img.shields.io/static/v1?label=code%20style&message=black&color=black&style=flat-square)][black]
![License](https://img.shields.io/github/license/MoritzM00/python-template-demo?style=flat-square)

[pre-commit]: https://github.com/pre-commit/pre-commit
[black]: https://github.com/psf/black

## Quick Start

Below you can find the quick start guide for development.

### How to use Conda with Poetry

This version of the template uses Conda as the virtual environment, but Poetry is still the package manager. This works well together, as you just have to activate the conda environment and then run `poetry install`. Poetry automatically detects the conda environment and installs the packages there.

#### Pre-requisites and Setup

- [Poetry](https://python-poetry.org/docs/#installation)
- Conda

Note: `conda activate` is a pain to use in makefile, so run this command these commands in this order:

Replace `<<env_name>>` with the name of your environment and `<<os>>` with the corresponding OS specific lock file, e.g. `linux-64` or `osx-arm64` or
(recommended)
You can set these as environment variables as well to avoid having to type them every time, e.g.:

```bash
export env_name=conda-env
export os=osx-arm64
```

Then run:

```bash
make create-env
conda activate $env_name
make install
```

#### How to add packages

If you want to add a new package that is installed with conda, add the package to the `environment.yml` file and use the following commands to add them to the poetry configuration as well. Fix the package versions installed by Conda to prevent upgrades from poetry.

For example, if you want to add pytorch to your project, add `pytorch::pytorch=2.0.1` to the `environment.yml` file and run:

```bash
poetry add --lock torch=2.0.1
```


and update the environment files (see next).
Other packages that do not require conda install should be added via poetry as usual.

#### Update the environment

Make sure the environment is activated and run:

```bash
make update-env
```

### Additional first-time setup

1. After setting up the environment, commit the `poetry.lock` file to your repository, so that the workflow on github can use it.
2. Enable [Pre-Commit CI](https://pre-commit.ci/) for your repository.
3. Enable **Github Pages** for your documentation.
   To do that, go to the _Settings_ tab of your repository and scroll down to the _GitHub Pages_ section.
   For the _Source_ option, select _GitHub Action_. Done!

### Install new packages

To install new PyPI packages, run:

```bash
poetry add <package-name>
```

To add dev-dependencies, run:

```bash
poetry add <package-name> --group dev
```

### Documentation

The Documentation is automatically deployed to GitHub Pages.

To view the documentation locally, run:

```bash
make docs_view
```

## Credits

This project was generated with the [Light-weight Python Template](https://github.com/MoritzM00/python-template) by Moritz Mistol.
