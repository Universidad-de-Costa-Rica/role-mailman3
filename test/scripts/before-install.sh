#!/bin/bash

# See https://github.com/travis-ci/travis-ci/issues/1066
# Fail if one of the commands of this script fails
set -e

basename=$(basename "`pwd`")
cd ../
mv $basename $GALAXY_NAMESPACE.$ROLE_NAME
cd $GALAXY_NAMESPACE.$ROLE_NAME

set +e
