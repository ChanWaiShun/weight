# Base image
FROM ruby:2.3.1

ENV HOME /home/ec2-user/weight

# Install PGsql dependencies and js engine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR $HOME

# Install gems
ADD Gemfile* $HOME/
RUN bundle install

# Add the app code
ADD . $HOME

# Default command
CMD ["rails", "server", "--binding", "0.0.0.0"]