CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY'],
    aws_secret_access_key: ENV['SECRET_KEY'],
    region: 'ap-northeast-1'
  }

  config.fog_directory  = ENV['FOG_DIRECTORY']
  config.cache_storage = :fog
end