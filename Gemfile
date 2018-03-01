source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core
gem 'rails', '~> 5.0.1'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'
gem 'turbolinks', '~> 5'
gem 'bcrypt', '~> 3.1.7'
gem 'dalli', '~> 2.7', '>= 2.7.6'

# CSS
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap', '~> 4.0.0.beta'
gem "font-awesome-rails"
gem "animate-rails"

# JavaScript
gem 'jbuilder', '~> 2.6', '>= 2.6.4'
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'coffee-rails', '~> 4.2'
gem 'bootbox-rails', '~> 0.5.0'
gem 'momentjs-rails', '~> 2.17', '>= 2.17.1'
gem 'lodash-rails'

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
