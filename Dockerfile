FROM ruby:3.0.6-alpine
RUN bundle config --global frozen 1
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle
COPY . .
CMD ["tail", "-f", "/dev/null"]
