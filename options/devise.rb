# auth
gem 'devise'
run 'bundle install --path=vendor/bundle --without production'

run 'wget https://raw.githubusercontent.com/tigrish/devise-i18n/master/locales/ja.yml -O config/locales/devise.ja.yml'

generate 'devise:install'
generate 'devise', 'user'

run 'bundle exec rake RAILS_ENV=development db:migrate'
run 'bundle exec rake RAILS_ENV=test db:migrate'

run 'bundle exec rails generate layout:devise bootstrap3'

application <<-CODE, env: 'development'
config.action_mailer.default_url_options = { host: 'localhost:3000' }
CODE

run "for i in app/views/devise/**/*.erb; do bundle exec erb2slim $i ${i%erb}slim && rm $i; done"