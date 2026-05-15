FROM ruby:4.0.3-alpine@sha256:2c041dcda87517d61ecd3b65832e6433384f8bdfec5b49d07de7f9a84e94f09b

COPY Gemfile Gemfile.lock app.rb config.ru /srv/app/
WORKDIR /srv/app
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
