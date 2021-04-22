FROM ruby:2.6.6

# Install nodejs
RUN apt-get update -qq && apt-get install -y build-essential libxslt-dev libxml2-dev cmake \
&& apt-get install -y nodejs npm && npm install n -g && n 12.13.0 \
&& apt-get install -y nginx

# Add Yarn repository
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
# Update
&& apt-get update -y \
# Install Yarn
&& apt-get install yarn -y

ADD nginx.conf /etc/nginx/sites-available/app.conf
RUN rm -f /etc/nginx/sites-enabled/default \
&& ln -s /etc/nginx/sites-available/voice_cloud.conf /etc/nginx/sites-enabled/voice_cloud.conf

ADD . /voice_cloud
WORKDIR /voice_cloud

COPY initdb.sql /docker-entrypoint-initdb.d/.

# Install & run bundler

COPY Gemfile /voice_cloud/Gemfile
COPY Gemfile.lock /voice_cloud/Gemfile.lock

RUN gem install bundler \
&& bundle \
&& mkdir -p voice_cloud/tmp/sockets

CMD ./docker-entrypoint.sh
