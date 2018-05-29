#!/bin/bash

python -m virtualenv venv
source venv/bin/activate
python -m pip install -r requirements.txt
pytest --junitxml=test-results/$BUILD_NUMBER.xml

