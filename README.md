# sidekiq_playground

## Docker

`docker-compose up -d --build` to build docker containers

`docker exec -it sidekiq_playground_ruby_1 sh` to enter in mode interactive in ruby container

## Sidekiq

`bundle exec sidekiq -r ./worker.rb` to start sidekiq

The Sidekiq GUI is on [Sidekiq](http:/localhost:3030)
user: `admin`, pass: `password123`

## Worker

`bundle exec irb -r ./worker.rb` to start interactive Ruby

`OurWorker.perform_async "<param>"`
