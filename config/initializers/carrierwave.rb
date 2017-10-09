CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'                        # required
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGTD54C3757EZOFQCQ',
    google_storage_secret_access_key: 'PYl1WhMciGmyrVyp8p52+8at9fppZ5YeyHVHc4KK'
  }
  config.fog_directory = 'CubeBlog'
end