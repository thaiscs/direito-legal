ARG RUBY_VERSION=3.2.1

FROM ruby:${RUBY_VERSION}-alpine3.16
WORKDIR /app
COPY . /app

# to build non native dependencies
RUN apk update && apk add build-base libffi-dev tzdata libpq-dev

RUN bundle config set --global force_ruby_platform true && bundle install

EXPOSE 3000