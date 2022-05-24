#!/bin/bash

pwd
ls -l
cd /app/build
ls -l
ignite scaffold chain github.com/alice/checkers
cd checkers
#ignite chain serve --reset-once
#ignite chain serve
cd vue
sed -i 's/"vue": "^0.1.49",/"vue": "0.1.49",/g' package.json
sed -i 's/"vuex": "^0.1.49",/"vuex": "0.1.49",/g' package.json
npm install
npm run build
#mkdir x/checkers/rules
#curl https://raw.githubusercontent.com/batkinson/checkers-go/a09daeb1548dd4cc0145d87c8da3ed2ea33a62e3/checkers/checkers.go | sed 's/package checkers/package rules/' > x/checkers/rules/checkers.go

