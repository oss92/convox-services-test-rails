class HomeController < ApplicationController
  def index
    @val = $redis.get('requests_since_deploy')
  end
end
