#!/bin/bash
if [ "$1" == "p" ]; then
  export RACK_ENV=production
fi
bundle exec pry -I lib/ -r bundler -r inline-css-html-converter -e 'Pry.start InlineCssHtmlConverter' $@
