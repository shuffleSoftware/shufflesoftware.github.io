#!/usr/bin/env bash

set -e

cd /home/ubuntu/app/blog

bundle install

bundle exec jekyll serve -H 0.0.0.0

