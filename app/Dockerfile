FROM ruby:2.4.1
RUN mkdir /app
WORKDIR /app
ENV RACK_ENV=production
ADD . /app
RUN bundle install

