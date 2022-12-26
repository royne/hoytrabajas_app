FROM ruby:3.1

RUN apt-get update -yqq

RUN apt-get install -yqq \
  build-essential \
  ca-certificates 

COPY . /usr/src/app/

WORKDIR /usr/src/app

RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0"]

