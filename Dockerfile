FROM ruby:3.1.2

ENV ROOT="/kaguild"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR ${ROOT}

RUN apt-get update -qq \
  && apt-get install -y build-essential libpq-dev \
  && apt-get install -y nodejs npm \
  && npm install --global yarn

COPY Gemfile Gemfile.lock ${ROOT}/
RUN bundle install

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
