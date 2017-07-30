FROM ruby:2.3.4
MAINTAINER Hiroto MIZOKI <h.mizoki@gmail.com>

# initialize
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /var/www/shirasagi
WORKDIR /var/www/shirasagi

# install gems
ADD ./repos/Gemfile /var/www/shirasagi/Gemfile
ADD ./repos/Gemfile.lock /var/www/shirasagi/Gemfile.lock
RUN bundle install

# Execute command on the lower line when starting container (at first time only)
# docker-compose run ruby rake ss:create_user data='{ name: "admin", uid: "admin", email: "admin@example.jp", password: "pass" }'
# docker-compose run ruby rake ss:create_site data='{ name: "開発用", host: "www", domains: "localhost:3000" }'
# docker-compose run ruby rake sys:set_admin_role user=admin
# docker-compose run ruby rake cms:set_admin_role user=admin site=www

