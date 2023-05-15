FROM ruby:3.2

RUN apt-get update -yqq

RUN apt-get install -yqq --no-install-recommends nodejs postgresql-client

COPY . /usr/src/app/

WORKDIR /usr/src/app

RUN bundle

CMD [ "rails", "s", "-b", "0.0.0.0" ]