FROM ruby:3.4.8-alpine@sha256:bb36e2a845bc692f42650d51266c6500e3792c9b99d591e15d0ab6a1d7e2965d

COPY Gemfile Gemfile.lock app.rb config.ru /srv/app/
WORKDIR /srv/app
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
