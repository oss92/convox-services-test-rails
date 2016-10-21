redis_connection = Redis.new(host: ENV["REDIS_HOST"])

begin
  redis ||= Redis::Namespace.new(:test, redis: redis_connection)
  redis.ping
  $redis = redis
  $redis.set('requests_since_deploy', 0)
end
