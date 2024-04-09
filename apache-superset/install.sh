#!/bin/sh

source $(dirname "$0")/.env.sh

mkdir -p ${CONFIG_DIR}

echo "${BRIGHT}${GREEN}Step 1/5: Creating Superset configuration file at: ${WHITE}${SUPERSET_CONFIG_PATH}${NORMAL}"
echo "SECRET_KEY = '$(openssl rand -base64 42)'" > ${SUPERSET_CONFIG_PATH}
echo "DATA_DIR = '${DATA_DIR}'" >> ${SUPERSET_CONFIG_PATH}
echo "SQLALCHEMY_DATABASE_URI = 'sqlite:///${DATA_DIR}/superset.db'" >> ${SUPERSET_CONFIG_PATH}

echo "${BRIGHT}${GREEN}Step 2/5: Installing Superset...${NORMAL}"
pipenv install

echo "${BRIGHT}${GREEN}Step 3/5: Creating Superset database...${NORMAL}"
pipenv run superset db upgrade

echo "${BRIGHT}${GREEN}Step 4/5: Creating Superset admin user...${NORMAL}"
pipenv run superset fab create-admin --username admin --firstname Admin --lastname User --email admin@me.com --password admin

echo "${BRIGHT}${GREEN}Step 5/5: Creating Superset roles...${NORMAL}"
pipenv run superset init

echo "${BRIGHT}${GREEN}Installation completed - run ./laaunch.sh to start the superset server.${NORMAL}"
echo ""
