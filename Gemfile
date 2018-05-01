source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#was 4.2.5
gem 'rails', '~> 5.1.4'
# Use mysql as the database for Active Record
#was sqlite3
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
#was 4.1.0
gem 'coffee-rails', '~> 4.2'
#Javascript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
#had no version
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#was 2.0
gem 'jbuilder', '~> 2.5'

#NOT USING bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt' #'~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #had no platforms
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  #added
  gem 'capybara', '~> 2.13'
  #added
  gem 'selenium-webdriver'
  #added
  gem 'factory_bot_rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'    #was 2.0
  #added
  gem 'listen', '>= 3.0.5', '< 3.2'    
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'    #find out if used
  #added
  gem 'spring-watcher-listen', '~> 2.0.0'    #find out if used
end


###############See if used
#gem 'execjs'    apparently don't need
# See https://github.com/rails/execjs#readme for more supported runtimes
#gem 'therubyracer', platforms: :ruby    #don't seem to need

#gem 'jquery-datatables-rails'

gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'bootstrap-sass', '3.3.7'
#won't need until further notice
gem 'will_paginate', '3.1.6'
#gem 'bootstrap-will_paginate', '1.0.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

#gem 'octicons'