if Rails.env.production?e
  CarrierWave.configure do |config|
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'

    config.fog_credentials = {
      # Amazon S3 Configuration
      :provider => 'AWS',
      :aws_access_key_id => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_ACCESS_KEY']
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end
