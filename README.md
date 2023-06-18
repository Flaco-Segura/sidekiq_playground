# sidekiq_playground

## Docker

`docker-compose up -d` to build docker containers

`docker exec -it sidekiq_playground_ruby_1 sh` to enter in mode interactive in ruby container

## Sidekiq

`bundle exec sidekiq -r ./worker.rb` to start sidekiq

`bundle exec irb -r ./worker.rb` to start interactive Ruby

## Worker

`OurWorker.perform_async "<param>"`
