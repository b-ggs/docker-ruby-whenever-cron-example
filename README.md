# docker-ruby-whenever-cron-example

example project with a cron job set up by whenever that runs a rake task

## Usage

```bash
docker-compose up
```

Once the container has spun up, cron should start printing a message every 60 seconds.

```
$ docker-compose up
...
whenever-example-app    | The Gemfile's dependencies are satisfied
whenever-example-app    | [write] crontab file updated
whenever-example-app    | The time now is 2020-03-31 21:18:01 +0000!
whenever-example-app    | The time now is 2020-03-31 21:19:01 +0000!
whenever-example-app    | The time now is 2020-03-31 21:20:01 +0000!
whenever-example-app    | The time now is 2020-03-31 21:21:01 +0000!
```
