#!/bin/sh

source $(dirname "$0")/.env.sh

pipenv run jupyter lab
