FROM ruby:2.7

WORKDIR /app

COPY Gemfile Gemfile.lock ./
COPY open-flights /app
RUN bundle install && yarn install
    cd open-flights

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0:3000"]
