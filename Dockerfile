FROM ruby:4.0.5-alpine@sha256:f48938e9ae72a4d32e728b03c306e7a7ff21f0cb6c2ed33f44a078c700b2aea6

COPY Gemfile Gemfile.lock app.rb config.ru /srv/app/
WORKDIR /srv/app
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
