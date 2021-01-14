#!/usr/bin/env bash
# exit on error
set -o errexit

rbenv install -l
rbenv install 2.6.5
rbenv rehash

gem install bundler

bundle install
rbenv rehash
bundle exec rake assets:precompile
bundle exec rake assets:clean
