RocketTag.configure do |config|
  config.force_lowercase = true # Automatically convert all tags to lowercase (optional, default: false)
  config.preload_tags = false # Preload tags with model, otherwise load all tags on first use (optional, default: true)
end
