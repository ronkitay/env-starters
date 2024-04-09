#!/bin/sh

source $(dirname "$0")/.env.sh

pipenv run superset run -p 8088 --with-threads --reload --debugger
