#!/bin/sh

export NORMAL=$(tput sgr0)
export BRIGHT=$(tput bold)
export GREEN=$(tput setaf 2)
export WHITE=$(tput setaf 7)

INSTALL_DIR=$(cd $(dirname "$0") && pwd)
export PYTHONPATH="${PYTHONPATH}:${INSTALL_DIR}"


