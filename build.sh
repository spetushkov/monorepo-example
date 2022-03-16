#!/bin/bash

set -e

ENO_ENV=uat
export PROJECT=`node -pe "require('./package.json').name"`
export VERSION=`node -pe "require('./package.json').version"`

echo "Building" $PROJECT $VERSION "project in environment" $ENO_ENV"..."

npm install
npm run build:$ENO_ENV

mkdir -p dist
cp -R build/* dist/
rm -rf build
echo "active" > dist/status

echo "Building" $PROJECT $VERSION "project in environment" $ENO_ENV "done"
