#!/bin/bash

cd ..
grunt
source bin/activate
source src/config/test_config.sh
python src/app.py

