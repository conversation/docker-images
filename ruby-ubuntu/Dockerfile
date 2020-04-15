FROM ubuntu:xenial

RUN apt-get update \
      && apt-get install -y --no-install-recommends software-properties-common wget \
      && add-apt-repository -y ppa:brightbox/ruby-ng \
      && add-apt-repository -y "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" \
      && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
      && apt-get update \
      && apt-get install -y --no-install-recommends \
        build-essential \
        pkg-config \
        curl \
        git \
        zlib1g-dev \
        libxml2-dev libxslt-dev \
        ruby2.4 ruby2.4-dev \
        tzdata \
        locales \
      && locale-gen en_AU.UTF-8 \
      && rm -rf /var/lib/apt/lists/*

ENV LANG=en_AU.UTF-8 \
    LC_ALL=en_AU.UTF-8

RUN gem install bundler --version "1.17.3" \
      && echo "install: --no-rdoc --no-ri" > /etc/gemrc

RUN bundle config build.nokogiri --use-system-libraries
