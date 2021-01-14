#!/usr/bin/env bash
# exit on error
set -o errexit

gem install bundler

bundle install
rbenv rehash
bundle exec rake assets:precompile
bundle exec rake assets:clean
