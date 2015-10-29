if Rails.env.production?
  CarrierWave. configure do |config|
    config.fog_credentials = {
      # Amazon S3 Configuration
      :provider => 'AWS',
      :aws_access_key_id => ENV['AKIAJKFLHFP7IDRDZFYA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory = ENV['clementine-app']
  end
end
