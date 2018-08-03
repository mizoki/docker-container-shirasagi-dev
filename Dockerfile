FROM ruby:2.5.1
MAINTAINER Hiroto MIZOKI <h.mizoki@gmail.com>

# proxy
#ENV http_proxy=http://proxy.server:port \
#    https_proxy=http://proxy.server:port \
#    HTTP_PROXY=http://proxy.server:port \
#    HTTPS_PROXY=http://proxy.server:port \
#    ftp_proxy=http://proxy.server:port \
#    FTP_PROXY=http://proxy.server:port \
#    rsync_proxy=http://proxy.server:port \
#    RSYNC_PROXY=http://proxy.server:port \
#    no_proxy="localhost,127.0.0.1,192.168.*" \
#    NO_PROXY="localhost,127.0.0.1,192.168.*"

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /var/www/shirasagi
WORKDIR /var/www/shirasagi

ENV BUNDLE_GEMFILE=/var/www/shirasagi/Gemfile \
    BUNDLE_JOBS=4

# bundle install
# docker-compose run ruby bundle install

# sample data
# gws
# docker-compose run ruby rake db:seed name=gws
