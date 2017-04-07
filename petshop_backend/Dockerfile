# Official Ubuntu image with Ruby installed
FROM ruby:2.3.0

# Update package lists and install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
  && rm -rf /var/lib/apt/lists/*

# Define where the application will live inside the image
ENV APP_HOME /app

# Create the application folder
RUN mkdir -p $APP_HOME

# Set the workind directory inside the image
WORKDIR $APP_HOME

# Add Gemfile and install dependencies
COPY Gemfile* $APP_HOME/
RUN bundle install
