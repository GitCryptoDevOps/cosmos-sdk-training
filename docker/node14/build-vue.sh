#!/bin/bash

#sed -i 's/"vue": "^0.1.49",/"vue": "0.1.49",/g' package.json
#sed -i 's/"vuex": "^0.1.49",/"vuex": "0.1.49",/g' package.json
sed -i 's/\^0.1.49/0.1.49/g' package.json
sed -i 's/\^0.1.49/0.1.49/g' package.json
#ignite chain serve
npm install
npm run build

