run "cat << EOF >> .gitignore
/.bundle
/db/*.sqlite3
/db/*.sqlite3-journal
/log/*.log
/tmp
doc/
*.swp
*~
.project
.idea
.secret
.DS_Store
config/application.yml
/vendor/bundle
/coverage
EOF"

git :init
git add: "."
git commit: %Q{ -m 'Initial commit' }

