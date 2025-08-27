# frozen_string_literal: true

if Rails.env.development?
  CarrierWave.configure do |config|
    config.storage = :file
    config.ignore_integrity_errors = false
    config.ignore_processing_errors = false
    config.ignore_download_errors = false
  end
else
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY'],
      aws_secret_access_key: ENV['AWS_SECRET_KEY'],
      region: ENV['AWS_REGION_NAME']
    }
    config.fog_attributes = { 'x-amz-server-side-encryption' => 'AES256' }
    config.fog_directory = ENV['AWS_BUCKET_NAME']
    config.storage = :fog
  end
end
