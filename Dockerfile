FROM ruby:2.3.4

LABEL maintainer "zhangwei UrlShortener zhangwei19890518@gmail.com"

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm nodejs-legacy vim

RUN mkdir /url_shortener

WORKDIR /url_shortener

COPY Gemfile /url_shortener/Gemfile
COPY Gemfile.lock /url_shortener/Gemfile.lock
RUN bundle install
COPY . /url_shortener
