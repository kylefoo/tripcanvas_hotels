source 'https://rubygems.org'

ruby "2.3.1"

#db
gem 'pg'

#defaults
gem 'bundler'
gem 'rails', '4.2.6'
gem 'sprockets'
gem 'sprockets-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'execjs'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

#front-end
gem 'bootstrap-sass', '~> 3.3.6'
gem 'slim-rails'
gem 'font-awesome-rails', '~> 4.4.0'
gem 'growlyflash', '~> 0.6.0'
gem 'gon'
gem 'metamagic'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# authentication
gem 'devise'

#Utilities
gem 'enumerize'
gem 'friendly_id', '~> 5.1.0'
gem 'aasm', '4.10.0'
gem 'simple_form'
gem 'opengraph_parser'

#image-process
gem 'fastimage'
gem 'image_processing'
gem 'mini_magick'
gem 'shrine'
gem 'carrierwave'
gem 'ckeditor', github: 'galetahub/ckeditor'

# js-assets
source 'https://rails-assets.org' do
  gem 'rails-assets-lightgallery'
  gem 'rails-assets-DataTables'
  gem 'rails-assets-voidberg--html5sortable'
end

group :staging, :production do
  gem 'passenger', '5.0.11'
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~>1.3.6'
  gem 'web-console', '~> 3.0'
  gem 'capistrano', '~> 3.1'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'capistrano-gitflow', git: 'git@github.com:YotpoLtd/capistrano-gitflow.git'
  gem 'capistrano-faster-assets', '~> 1.0'
  gem 'capistrano-passenger', '0.2.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rails-tail-log'
  gem 'capistrano-db-tasks', require: false
end

