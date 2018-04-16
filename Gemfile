source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platform: :mri
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'bootstrap_form'
gem 'carrierwave', '~> 1.0'
gem 'bcrypt', '3.1.11'
gem 'devise'
gem 'will_paginate', '~> 3.1.0'
gem 'rubocop'