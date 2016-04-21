source 'https://rubygems.org'

#db
gem 'pg'

#defaults
gem 'bundler'
gem 'rails', '4.2.5.2'
gem 'sprockets'
gem 'sprockets-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

#front-end
gem 'bootstrap-sass', '~> 3.3.6'
gem 'slim-rails'
gem 'font-awesome-rails', '~> 4.4.0'

# authentication
gem 'devise'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :staging, :test do
  gem 'passenger', '5.0.11'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
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

