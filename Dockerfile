FROM ruby:2.7
LABEL maintainer="Kobus Post"

RUN gem install rubocop

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
