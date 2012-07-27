CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIIR7LH5DQKMSQ7CQ',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'Ireland'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'alpha-p-files'                     # required
end