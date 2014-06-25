CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['S3_KEY'],
    :aws_secret_access_key => ENV['S3_SECRET'],
  }
  config.asset_host = "http://d1glu0vbbg0go6.cloudfront.net"
  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku
  config.fog_directory    = ENV['S3_BUCKET_NAME']
  config.fog_public       = true
  config.fog_attributes   = {'Cache-Control'=>'max-age=315576000'}
  config.storage          = :fog
end
