source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.6'  # Upgrade Ruby version to 2.7.6 for better gem support

gem 'rails', '~> 5.2.8'  # latest patch for 5.2.x series for bug/security fixes
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

# Add explicit mimemagic with fixed version to avoid yanked 0.3.2 issue
gem 'mimemagic', '~> 0.4.3'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'friendly_id', '~> 5.2.0' 
gem 'devise', '~> 4.7'  # update devise for better compatibility
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
gem 'sidhu_view_tool', '~> 0.1.0'
gem 'petergate', '~> 2.0', '>= 2.0.1'
gem 'font-awesome-rails', '~> 4.6', '>= 4.6.3.1'
gem 'kaminari', '~> 1.1', '>= 1.1.1' 
gem 'cocoon', '~> 1.2', '>= 1.2.12'
gem 'gritter', '~> 1.2'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'carrierwave', '~> 0.11.2'
gem 'mini_magick', '~> 4.9'   # bumped to latest 4.x to get bug fixes
gem 'carrierwave-aws', '~> 1.0'
gem 'dotenv-rails', '~> 2.7'  # update for better compatibility
gem 'redis', '~> 4.8'         # updated redis gem version
gem 'twitter', '~> 7.0'       # newer twitter gem version
gem 'redcarpet', '~> 3.5'     # minor update
gem 'coderay', '~> 1.1', '>= 1.1.2'

# Explicitly add nokogiri to force a modern version compatible with Ruby 2.7+
gem 'nokogiri', '~> 1.13'

