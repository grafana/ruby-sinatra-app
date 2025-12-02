FROM ruby:2.7.2-alpine@sha256:c052b6b5daf7bf467a2ad3368e29ead4ebfb04f2b25b45cbf32a4a4c5f8ee362

COPY Gemfile Gemfile.lock app.rb config.ru /srv/app/
WORKDIR /srv/app
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
