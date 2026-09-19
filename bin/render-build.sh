#!/usr/bin/env bash
set -o errexit

bundle install
npm ci
bundle exec rails assets:precompile
bundle exec rails db:migrate
