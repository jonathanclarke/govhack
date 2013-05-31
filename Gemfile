source 'https://rubygems.org'

gem 'rails', '4.0.0.rc1'
gem 'tire'
gem 'devise', :git => 'git://github.com/plataformatec/devise.git'
gem 'uuidtools'
gem 'turbolinks'

group :assets do
  gem 'sass-rails',   '~> 4.0.0.rc1'
  gem 'coffee-rails', '~> 4.0.0.rc1'

  gem 'execjs'
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'activerecord-deprecated_finders'

gem 'asset_sync'
gem 'aws-sdk'
gem 'cancan'
gem 'capistrano'
gem 'capistrano-ext'
gem 'carmen'
gem 'carrierwave'
# gem 'exception_notification'
gem 'faker'
gem 'fog'
gem 'gravtastic'
gem 'haml-rails'
gem 'haml'
gem 'jquery-rails'
gem 'carrierwave'
gem 'pg'
gem 'rvm-capistrano'
gem 'sass'
gem 'sanitize'
gem 'kaminari'

group :development do
  gem 'capistrano'
  gem 'rdoc'

  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-minitest'
  # gem 'guard-zeus'
  gem 'rb-inotify', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false

end

group :development, :test do 
  gem 'capybara'
  gem 'carmen'
  gem 'database_cleaner'
  gem 'fakeweb'
  gem 'launchy'
  gem 'mailcatcher'
  gem 'sdoc', require: false      
  gem "test-unit", "2.5.2"
  gem "mocha", "0.12.9", require: false
  gem 'webrat'
end

group :test do 
  gem 'faker'
  gem 'simplecov', :require => false
  gem 'watchr'	
  gem 'autotest-inotify'
  gem 'autotest-notification'
  gem 'autotest-rails'
end

group :production do
  gem 'pg'
end

group :tools do
  gem 'zeus', '~> 0.13.2'
end