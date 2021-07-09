FROM elixir:latest

RUN apt update && \
  apt install -y postgresql-client nodejs npm inotify-tools

RUN npm i -g npm

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN cd ./assets && npm install

RUN mix local.rebar --force
RUN mix local.hex --force

RUN mix do deps.get, compile

CMD ["/app/entrypoint.sh"]