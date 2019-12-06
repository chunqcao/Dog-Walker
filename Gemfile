# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bootstrap', '~> 4.3.1'
gem 'jbuilder', '~> 2.7'
gem 'react-rails'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'awesome_print', '~> 1.8'
  gem 'bullet', '~> 6.0', '>= 6.0.2'
  gem 'capybara', '~> 3.29'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.2'
  gem 'guard', '~> 2.15', '>= 2.15.1'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
  gem 'pry', '~> 0.12.2'
  gem 'pry-byebug', '~> 3.7'
  gem 'pry-doc', '~> 1.0'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec', '~> 3.8'
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem 'shoulda-matchers', '~> 4.1', '>= 4.1.2'
  # gem 'rubocop-rails'
  gem 'rubocop', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
