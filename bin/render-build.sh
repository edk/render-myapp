#!/usr/bin/env bash

set -o errexit

bundle install
bundle exec rake asset:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
