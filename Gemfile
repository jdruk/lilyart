source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'mysql2', '~> 0.4.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# gem add manualmente
gem 'jquery-rails'
gem 'materialize-sass'
gem 'material_icons'
gem 'devise', git: 'https://github.com/plataformatec/devise.git'
gem 'erubis'
gem 'pundit'
gem 'rmagick'
gem 'carrierwave', '~> 1.0'

group :production do
  gem 'pg', '~> 0.21.0'
end

# Capistrano
#gem 'capistrano', '~> 3.7', '>= 3.7.1'
#gem 'capistrano-rails', '~> 1.2'
#gem 'capistrano-passenger', '~> 0.2.0'
#gem 'capistrano-rvm'
gem "appengine", "~> 0.4.1"
gem "fog-google"
gem "google-api-client", "> 0.8.5", "< 0.9"
gem "mime-types"
gem "stackdriver"
gem 'friendly_id', '~> 5.1.0'
