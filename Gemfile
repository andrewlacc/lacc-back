source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core
gem 'rails', '~> 5.1', '>= 5.1.6'
gem 'puma', '~> 3.11', '>= 3.11.3'
gem 'turbolinks', '~> 5'
gem 'dalli', '~> 2.7', '>= 2.7.6'

# CSS
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem "font-awesome-rails"
gem "animate-rails"

# JavaScript
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'bootbox-rails', '~> 0.5.0'
gem 'momentjs-rails', '~> 2.20', '>= 2.20.1'
gem 'lodash-rails'

# Database
gem 'mysql2', '~> 0.5.2'
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'redis', '~> 3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
