# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies
adding devise  https://github.com/heartcombo/devise
https://github.com/RailsApps/rails-devise-roles
adding bettererrors https://github.com/BetterErrors/better_errors
added bootstrap-sass  https://github.com/twbs/bootstrap-sass

* Configuration
this was a big pain getting rails to see my environment variable
save it to bashrc and then 
whatever: <%= ENV.fetch("THEVARIABLE") %> 

* Database creation
on laptop to start db
sudo service postgresql start
sudo -u postgres psql
created user "webuser" pwrd is low sec with suffix


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)
start rails with "rails server"

* Deployment instructions
how to do dbmigrate on production
sudo heroku run rails db:migrate -a workforeachother

* ...


TODO: 

