#!/bin/sh

export NORMAL=$(tput sgr0)
export BRIGHT=$(tput bold)
export GREEN=$(tput setaf 2)
export WHITE=$(tput setaf 7)

export FLASK_APP=superset 

export INSTALL_DIR=$(cd $(dirname "$0") & pwd)
export CONFIG_DIR=${INSTALL_DIR}/.config
export DATA_DIR=${INSTALL_DIR}/.data
export SUPERSET_CONFIG_PATH=${CONFIG_DIR}/superset_config.py
