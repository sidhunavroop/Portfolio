# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.4.5' # Use latest stable Ruby

# Rails
gem 'rails', '~> 7.1.0'

# Database
gem 'pg', '~> 1.5'

# Webserver
gem 'puma', '~> 6.4'

# Authentication
gem 'devise', '~> 4.9'

# Admin dashboard
gem 'activeadmin', '3.3.0'

# Frontend helpers
gem 'sass-rails', '>= 6'
gem 'jsbundling-rails', '~> 1.2'
gem 'importmap-rails', '~> 1.2'

# File uploads
gem 'carrierwave', '~> 3.1', '>= 3.1.2'
gem 'fog-aws', '~> 3.33'
gem 'mini_magick', '~> 4.12'

# Background jobs
gem 'sidekiq', '~> 7.3'
gem 'redis', '~> 4.8'
gem 'redis-rails', '~> 5.0'

# Pagination
gem 'kaminari', '~> 1.2', '>= 1.2.2'

# Search
gem 'ransack', '>= 4.0'

# JSON API support
gem 'active_model_serializers', '~> 0.10.13'

# Utilities
gem 'dotenv-rails', groups: [:development, :test] # Load ENV variables
gem 'figaro', '~> 1.2', groups: [:development, :test] # Optional alternative for ENV management

gem 'bootsnap', '~> 1.18', '>= 1.18.6'

gem 'friendly_id', '~> 5.5', '>= 5.5.1'

gem 'petergate', '~> 3.0', '>= 3.0.1'

gem 'redcarpet', '~> 3.6', '>= 3.6.1'

gem 'coderay', '~> 1.1', '>= 1.1.3'

gem 'popper_js', '~> 2.11', '>= 2.11.8'

gem 'jquery-ui-rails', '~> 8.0'

gem 'cocoon', '~> 1.2', '>= 1.2.15'

gem 'gritter', '~> 1.2'

gem 'bootstrap', '~> 5.3', '>= 5.3.5'

gem 'font-awesome-sass', '~> 6.7', '>= 6.7.2'

gem 'sidhu_view_tool', '~> 0.1.0'


#   & Development
group :development, :test do
  gem 'pry', '~> 0.14'
  gem 'pry-rails', '~> 0.3'
  gem 'rspec-rails', '~> 6.1'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.0'
end

group :development do
  gem 'web-console', '~> 4.2', '>= 4.2.1'
  gem 'listen', '~> 3.8'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0'
end

group :test do
  gem 'capybara', '~> 3.40'
  gem 'selenium-webdriver', '~> 4.10'
  gem 'webdrivers', '= 5.3.0' 
end
