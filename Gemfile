source "https://rubygems.org"

ruby "3.2.5"

gem "rails", "~> 7.2.1"
gem "sprockets-rails", "~> 3.5.2"
gem "puma", "~> 6.4"
gem "importmap-rails", "~> 1.2.3"
gem "turbo-rails", "~> 2.0"
gem "stimulus-rails", "~> 1.3"
gem "bootsnap", require: false

# Use SQLite3 for development and test
group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[mri mswin mswin64 mingw x64_mingw], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rspec-rails", "~> 6.0"  # Ensure RSpec is included
end

# Use PostgreSQL for production
group :production do
  gem "pg", "~> 1.5"
end

group :development do
  gem "web-console", "~> 4.2", platforms: [:ruby]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "tailwindcss-rails", "~> 2.0"
gem "cssbundling-rails", "~> 1.4"

