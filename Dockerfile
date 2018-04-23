FROM ruby:2.3.4

LABEL maintainer "zhangwei UrlShortener zhangwei19890518@gmail.com"

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm nodejs-legacy vim

RUN mkdir -p /usr/src/url_shortener

WORKDIR /usr/src/url_shortener

COPY Gemfile /usr/src/url_shortener/Gemfile
COPY Gemfile.lock /usr/src/url_shortener/Gemfile.lock
RUN bundle install
COPY . /usr/src/url_shortener
