#!/bin/sh

source $(dirname "$0")/.env.sh

echo "${BRIGHT}${GREEN}Step 1/1: Installing Jupyter Lab...${NORMAL}"
pipenv install

echo "${BRIGHT}${GREEN}Installation completed - run ./launch.sh to start the jupyter server.${NORMAL}"
echo ""
