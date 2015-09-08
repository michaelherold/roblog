FROM ruby:2.2.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir /app
WORKDIR /app

ADD . /app
