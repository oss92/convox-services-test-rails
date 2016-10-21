class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :increment_redis_test_counter

  def increment_redis_test_counter
    $redis.incr('requests_since_deploy')
  end
end
