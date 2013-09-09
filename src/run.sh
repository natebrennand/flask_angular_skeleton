#!/bin/bash

cd ..
grunt
source bin/activate
#source src/config/deploy_config.sh
python src/app.py

