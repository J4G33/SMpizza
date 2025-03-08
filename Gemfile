source "https://rubygems.org"

gem "rails", "> 7.2.2", "<= 7.2.2.1"
gem "sqlite3", "~> 2.6.0"
gem "puma", "~> 6.0"  # Updated to ensure compatibility with Rack 3
gem "rack", ">= 3.0.0"  # Added to ensure Rack 3.x is used
gem "importmap-rails", "~> 2.1.0"
gem "turbo-rails", "~> 2.0"  # Matches available versions (e.g., ~> 2.0.13)
gem "stimulus-rails", "~> 1.3"  # Updated constraint to match available versions (e.g., ~> 1.3.0)
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rails-omakase", require: false
end


group :development do
  gem "web-console", "> 4.2", platforms: [ :ruby ]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Removed sassc-rails unless you explicitly need Sass/SCSS alongside Tailwind
# If you need Sass, uncomment and add a version constraint:
# gem "sassc-rails", "~> 2.1"

gem "tailwindcss-rails", "~> 4.2"

gem "sprockets-rails", "~> 3.5"

gem "cssbundling-rails", "~> 1.4"
