if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider => "aws",
      :region => "us-east-2",
      :aws_access_key_id => ENV["S3_ACCESS_KEY"],
      :aws_secret_access_key => ENV["S3_SECRET_KEY"],
    }
    config.fog_directory = ENV["S3_BUCKET"]
  end
end
