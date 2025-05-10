source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# heroku upgrade to heroku-22 
#ruby '2.7.0'
#ruby '3.0.0'
ruby '3.2.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '~> 5.2.3'
gem 'rails', '~> 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
gem 'net-ping', '~> 1.7', '>= 1.7.8'
gem 'net-ssh', '7.0.0.beta1'
gem 'ipaddress', '~> 0.8.3'
# Gemfile
# or specify git master
gem 'ipcalc', '~> 1.0'
gem 'openssl', git: 'https://github.com/ruby/openssl'
# or specify git master
gem 'pagy', '~> 5.10' # omit patch digit
gem 'httparty', '~> 0.18.1'
gem 'puma', '~> 3.11'
gem 'psych', '< 4'
#gem "mini_magick"
gem 'will_paginate', '~> 3.1.0'
# Use SCSS for stylesheets
gem 'dnsruby', '~> 1.61', '>= 1.61.5'
gem 'webpacker', '~> 5.x'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'ahoy_matey'
#gem 'covid19-rb'
gem 'rss', '~> 0.2.9'
gem 'excon'
gem "paperclip", "~> 6.0.0"
gem 'pdfjs_viewer-rails'
gem 'jquery-rails', '~> 4.4'
#gem 'yarn', '~> 0.1.1'
gem 'unicorn'
#gem 'covid19-rb', require: 'covid19'
#gem 'json', '~> 1.8', '>= 1.8.3'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem 'bulma-rails', '~> 0.7.5'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.5'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
gem 'link_with_icon'
gem 'devise'

gem 'hirb', '~> 0.7.3'
# Use ActiveModel has_secure_password

gem 'covid19-rb', require: 'covid19', git: 'https://github.com/viccarrasco/covid19-rb'

# gem 'bcrypt', '~> 3.1.7'
gem 'byebug', '~> 11.1', '>= 11.1.3'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'listen', '~> 3.2', '>= 3.2.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'webdrivers'
  gem 'chromedriver-helper', '~> 1.0'
  gem 'capybara'

end

group :development do
  #    gem 'rspec-rails'

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  #gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  #  gem 'capybara', '>= 2.15'
  # gem 'webdrivers'
  gem 'selenium-webdriver'
  #  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  #  gem 'chromedriver-helper'
  #    gem 'rspec-rails'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


