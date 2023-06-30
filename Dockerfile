FROM ruby:3.0.6-alpine
RUN bundle config --global frozen 1
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app/
COPY Gemfile.lock /app/
RUN bundle install --quiet
COPY . /app/
CMD ["tail", "-f", "/dev/null"]
