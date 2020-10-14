#!/bin/bash

# See https://github.com/travis-ci/travis-ci/issues/1066
# Fail if one of the commands of this script fails
set -e

cd ../
mv $ROLE_NAME jobcespedes.$ROLE_NAME
cd jobcespedes.$ROLE_NAME

set +e
