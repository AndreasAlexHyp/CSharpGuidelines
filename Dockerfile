FROM ruby:2.4.9-alpine3.11

RUN date

# Update and install base packages
RUN apk update
RUN apk upgrade 
RUN apk add bash
RUN apk add curl
RUN apk add wget
RUN apk add bash
RUN apk add make
RUN apk add gcc
RUN apk add build-base

# Install ruby and ruby-bundler
RUN apk add ruby
RUN apk add ruby-dev
RUN apk add ruby-bundler

# Clean apk cache
RUN rm -rf /var/cache/apk/*

RUN mkdir /usr/app 
WORKDIR /usr/app

COPY Gemfile /usr/app/ 
COPY Gemfile.lock /usr/app/

RUN gem install bundler -v 2.1.4
RUN bundle install

COPY . /usr/app

WORKDIR /usr/app

CMD bundle exec jekyll serve --incremental --host 0.0.0.0 --port 7070