#!/bin/bash

set -x

npm install "node-red@$NODERED_VERSION"
node -e "const data = require('./node_modules/node-red/package.json'); data.pkg = { assets: ['./**/*'] }; require('fs').writeFileSync('new-package.json', JSON.stringify(data, null, ' '));"
cp new-package.json node_modules/node-red/package.json
(
  cd node_modules/node-red || exit 1
  npm install --production
  pkg \
    --targets node8.16.0-linux-armv7,node8.16.0-linux-x64,node8.16.0-win-x64,node8.16.0-macos-x64,node10.15.3-linux-armv7,node10.15.3-linux-x64,node10.15.3-win-x64,node10.15.3-macos-x64 \
    --out-path ../../release --public .
)
