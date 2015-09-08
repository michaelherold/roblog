FROM ruby:2.2.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
RUN bundle install

ADD . /app
