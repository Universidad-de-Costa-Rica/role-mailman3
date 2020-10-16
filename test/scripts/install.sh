#!/bin/sh

# See https://github.com/travis-ci/travis-ci/issues/1066
# Fail if one of the commands of this script fails
set -e

test -f requirements.txt && pip install -r requirements.txt || echo "no requirements"
pip install molecule[docker] docker ansible-lint yamllint flake8

set +e
