#!/bin/sh

export NORMAL=$(tput sgr0)
export BRIGHT=$(tput bold)
export GREEN=$(tput setaf 2)
export WHITE=$(tput setaf 7)

export FLASK_APP=superset 

export INSTALL_DIR=$(dirname "$0")
export CONFIG_DIR=${INSTALL_DIR}/.config
export SUPERSET_CONFIG_PATH=${CONFIG_DIR}/superset_config.py
