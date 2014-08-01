generate 'simple_form:install --bootstrap'
generate 'kaminari:config'

run 'wheneverize .'

run 'bundle exec rake RAILS_ENV=development db:create'
run 'bundle exec rake RAILS_ENV=test db:create'

# dependencies: active_admin & devise
generate :scaffold, "user name:string"

run 'bundle exec rake RAILS_ENV=development db:migrate'
run 'bundle exec rake RAILS_ENV=test db:migrate'

run "rm app/assets/javascripts/application.js"
run 'bundle exec rails generate layout:install bootstrap3'

route "root :to => 'users#index'"

generate 'figaro:install'

# erb to slim
run "for i in app/views/**/*.erb; do bundle exec erb2slim $i ${i%erb}slim && rm $i; done"
