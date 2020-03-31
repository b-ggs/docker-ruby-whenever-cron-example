set :output, ENV['CRON_LOG_PATH']
set :path, ENV['APP_PATH']

# https://github.com/javan/whenever/issues/656
ENV.each { |k, v| env(k, v) }

every 1.minute do
  rake 'tell_time'
end
