require "sidekiq"

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:6379' }
end

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis:6379' }
end

class OurWorker
  include Sidekiq::Worker

  def perform(complexity)
    case complexity
    when "super_hard"
      puts "Charging a credit card..."
      raise "Woops stuff got bad"
      sleep 20
      puts "Really took quite a bit effort"
    when "hard"
      sleep 10
      puts "That was a bit of work"
    else
      sleep 1
      puts "That wasn't a lot of effort"  
    end
  end
end

