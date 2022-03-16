#!/bin/bash

# $1: @scope/target_package in the command 'lerna add @scope/source_package --scope=@scope/target_package'

set -e

lerna clean --yes --scope=$1
lerna bootstrap --scope=$1