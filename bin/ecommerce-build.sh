#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# clean
rm -rf public
# build
npm install --prefix javascript && npm run build --prefix javascript
# migrate
bundle exec rake db:migrate
# postbuild
cp -a client/build/. public/