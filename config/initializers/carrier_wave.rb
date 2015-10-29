if Rails.env.production?
  CarrierWave. configure do |config|
    config.fog_credentials = {
      # Amazon S3 Configuration
      :provider => 'AWS',
      :aws_access_key_id => ENV['AWS_ACCESS_KEY'],
      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end
