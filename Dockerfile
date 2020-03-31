FROM ruby:2.6.5

RUN apt update \
  && apt install -y cron \
  && rm -rf /var/lib/apt/lists/*

ENV APP_PATH=/opt/whenever_example_app
ENV CRON_LOG_PATH=/var/log/cron.log

WORKDIR $APP_PATH

COPY . $APP_PATH/

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["docker-start", "start-cron", "tail-cron-log"]
