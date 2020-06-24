#!/bin/bash

set -x

npm install "node-red@$NODERED_VERSION"
node -e "const data = require('./node_modules/node-red/package.json'); data.pkg = { assets: ['./**/*'] }; require('fs').writeFileSync('new-package.json', JSON.stringify(data, null, ' '));"
cp new-package.json node_modules/node-red/package.json
(
  cd node_modules/node-red || exit 1
  npm install --production
  pkg \
    --targets node10-linux-armv7, \
    --out-path ../../release --public .
)
