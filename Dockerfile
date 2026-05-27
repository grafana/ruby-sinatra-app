FROM ruby:2.7.8-alpine@sha256:371668748735a808d1fd1c506878e09f40cb542ffc758cfa7eb124f90827e8d9

COPY Gemfile Gemfile.lock app.rb config.ru /srv/app/
WORKDIR /srv/app
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
