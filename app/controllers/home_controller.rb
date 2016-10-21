class HomeController < ApplicationController
  def index
    @val = $redis.get('requests_since_deploy')
    @redis_url = ENV['REDIS_HOST'] || 'localhost'
  end
end
