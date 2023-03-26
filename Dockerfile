FROM ruby:3.2

RUN gem install bundler 

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle config build.nokogiri --use-system-libraries

RUN bundle check || bundle install 

COPY . ./ 


ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]