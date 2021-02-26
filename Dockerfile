FROM xavius/base:2.7

RUN curl https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh > /usr/local/bin/wait-for-it.sh && \
  chmod +x /usr/local/bin/wait-for-it.sh

RUN apk add --no-cache --upgrade bash

COPY package.json yarn.lock $APP_ROOT/
COPY . $APP_ROOT

RUN bin/bundle install
RUN bin/yarn install --frozen-lockfile

CMD "Done"
