source "https://rubygems.org"

ruby '3.2.5'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.1"
gem "sprockets-rails", "~> 3.5.2"
gem "pg", "~> 1.5.8" # PostgreSQL for production
gem "puma", "~> 6.4" # Added to ensure compatibility with Rack 3.x is used
gem "importmap-rails", "~> 1.2.3"
gem "turbo-rails", "~> 2.0" # Matches available versions (e.g., ~> 2.0.13)
gem "stimulus-rails", "~> 1.3" # Updated constraint to match available versions
gem "bootsnap", require: false

group :development, :test do
  gem "sqlite3", "~> 1.4" # ✅ Added SQLite3 for development & testing
  gem "debug", platforms: %i[mri mswin mswin64 mingw x64_mingw], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console", "~> 4.2", platforms: [ :ruby ]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Removed sassc-rails unless you explicitly need Sass/SCSS alongside Tailwind
# If you need Sass, uncomment the line below and add a version constraint:
# gem "sassc-rails", "~> 2.1"

gem "tailwindcss-rails", "~> 2.0"
gem "cssbundling-rails", "~> 1.4"
