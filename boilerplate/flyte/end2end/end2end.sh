#!/usr/bin/env bash

# WARNING: THIS FILE IS MANAGED IN THE 'BOILERPLATE' REPO AND COPIED TO OTHER REPOSITORIES.
# ONLY EDIT THIS FILE FROM WITHIN THE 'FLYTEORG/BOILERPLATE' REPOSITORY:
#
# TO OPT OUT OF UPDATES, SEE https://github.com/flyteorg/boilerplate/blob/master/Readme.rst
set -eu

CONFIG_FILE=$1; shift
EXTRA_FLAGS=( "$@" )

python ./boilerplate/flyte/end2end/run-tests.py "$FLYTESNACKS_VERSION" "$FLYTESNACKS_PRIORITIES" "$CONFIG_FILE" "${EXTRA_FLAGS[@]}"
