#!/bin/sh

REPO_ROOT=$(cd $(dirname "$0") && pwd)
export PYTHONPATH="${PYTHONPATH}:${REPO_ROOT}"
echo "PYTHONPATH = ${PYTHONPATH}"
pipenv run jupyter lab
