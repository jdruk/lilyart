CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'                        # required
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGE4XCR5QLWIEBT3RD',
    google_storage_secret_access_key: 'S67bRLunFjeNM9ML1hl+AVgLsE6PyMRtzFj8NfWi'
  }
  config.fog_directory = 'atelielily-194313.appspot.com'
end
