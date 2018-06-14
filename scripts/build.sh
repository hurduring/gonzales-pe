#!/bin/bash

rm -rf lib
mkdir -p lib

if [ $# -eq 0 ]; then
  syntaxes="css less sass scss styl"
else
  syntaxes=$@
fi

printf "\n\
-------------------------------------------------\n\
 Generating webpack modules ($syntaxes)\n\
-------------------------------------------------\n\n"

./node_modules/.bin/webpack --module-bind "json=json"

git checkout -- src/syntaxes.js
