require "redis"


redis_config = YAML.load_file("#{Rails.root}/config/redis.yml")[Rails.env]

$redis = Redis.new(host: redis_config['host'], port: redis_config['port'])
$redis_sms = Redis.new(host: redis_config['host'], port: redis_config['port'],:db => 1)
$redis_user_token = Redis.new(host: redis_config['host'], port: redis_config['port'],:db => 2)
