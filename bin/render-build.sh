#!/usr/bin/env bash
set -o errexit

bundle install
npm ci --legacy-peer-deps
bundle exec rails assets:precompile
bundle exec rails db:migrate
