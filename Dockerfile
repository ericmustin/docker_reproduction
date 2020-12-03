FROM ruby:2.6.3
RUN apt-get update -qq

RUN gem install bundler
ENV BUNDLE_PATH "/bundle"

RUN mkdir -p /app
WORKDIR /app

COPY ./app/ .
RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "puma", "config.ru", "-C", "puma.rb"]