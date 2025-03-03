Rails.application.configure do
  config.assets.version = '1.0'
  config.assets.paths << Rails.root.join('app', 'assets', 'stylesheets')
  config.assets.paths << Rails.root.join('public', 'assets')
end