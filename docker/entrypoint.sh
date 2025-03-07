#!/bin/bash
echo "running lnprototest"
make
pip3 install poetry
cd Lnprototest_Testing; poetry install 
poetry run pytest ../lnprototest --runner=ldk_lnprototest.Runner --dist=loadfile --log-cli-level=DEBUG
