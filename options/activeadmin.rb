# admin app

gem 'activeadmin', github: 'gregbell/active_admin'
run 'bundle install --path=vendor/bundle --without production'

generate 'active_admin:install'
generate 'active_admin:resource', 'user'

run 'bundle exec rake RAILS_ENV=development db:migrate'
run 'bundle exec rake RAILS_ENV=test db:migrate'
