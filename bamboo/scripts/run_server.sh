#!/bin/bash
mongod --fork --logpath /var/www/bamboo/log/mongodb.log
source $WORKON_HOME/bamboo/bin/activate
celery worker --config=bamboo.config.celeryconfig &
python ./scripts/run_server.py
