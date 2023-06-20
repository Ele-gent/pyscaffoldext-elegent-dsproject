#!/bin/bash

# Set version to 3.10.10 with pyenv
export PYENV_VERSION=3.10.10
# create venv
python3 -m venv .venv --prompt venv-elegentdsproject
# activate env (not needed if explictly using pip from the venv)
source .venv/bin/activate
# install pip setuptools and wheel and update to latest version
.venv/bin/pip install --upgrade pip setuptools wheel
# install package (in editable mode)
.venv/bin/pip install -e .[testing]

# setup pre-commit
pre-commit uninstall
pre-commit install
pre-commit install --install-hooks
