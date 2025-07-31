FROM ruby:3.2-alpine

WORKDIR /app

RUN apk add --no-cache build-base git

COPY Gemfile* *.gemspec ./
COPY lib/RubyRAG/version.rb lib/RubyRAG/version.rb

RUN bundle install

COPY . .

CMD ["bin/console"]
