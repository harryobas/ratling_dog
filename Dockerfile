FROM ruby:2.5

RUN apt-get update -yqq
COPY ratling_dog.gemspec /usr/scr/ratling_dog/
COPY Gemfile* /usr/src/ratling_dog/

COPY . /usr/src/ratling_dog/


WORKDIR /usr/src/ratling_dog/

RUN gem install bundler -v 2.0.2
RUN bundle _2.0.2_ install

CMD ["/bin/bash"]