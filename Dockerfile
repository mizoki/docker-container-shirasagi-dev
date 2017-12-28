FROM ruby:2.3.4
MAINTAINER Hiroto MIZOKI <h.mizoki@gmail.com>

# initialize
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /var/www/shirasagi
WORKDIR /var/www/shirasagi

ENV BUNDLE_GEMFILE=/var/www/shirasagi/Gemfile \
    BUNDLE_JOBS=2 \
    BUNDLE_PATH=/var/www/shirasagi/vendor/bundle

# bundle install
# docker-compose run ruby bundle install

# sample data
# gws
# docker-compose run ruby rake db:seed name=gws
