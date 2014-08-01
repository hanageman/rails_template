# logical delete
gem 'paranoia'

# paging
gem 'kaminari'

# httpd
gem 'unicorn'

# bootstrap
gem 'bootstrap-sass'
gem 'bootstrap-generators'
gem 'rails_layout'

# crontab
gem 'whenever', require: false

# form 
gem 'simple_form'
gem 'html5_validators'

# log
gem 'quiet_assets'
gem 'rails-flog', :require => 'flog'

# env
gem 'figaro'

# performance
gem 'newrelic_rpm'

# notify exception
gem 'airbrake'

# parser
gem 'nokogiri'

# hash
gem 'hashie'

# view helper
gem 'active_decorator'

uncomment_lines 'Gemfile', "gem 'therubyracer'"

# template engine
gem "slim-rails"

gem_group :development do
  gem 'html2slim'
end

gem_group :development, :test do
  gem 'annotate'

  gem 'rspec-rails'
  gem 'factory_girl_rails'

  gem 'guard'
  gem 'guard-rspec'

  gem 'database_rewinder'

  gem 'simplecov'
  gem 'simplecov-rcov'

  gem 'webmock'
  gem 'vcr'

  gem 'spring-commands-rspec'
end

gem_group :production do
  # For Rails 4 deployment on Heroku
  gem "rails_12factor"
  gem "pg"
end

run 'bundle install --path=vendor/bundle --without production'