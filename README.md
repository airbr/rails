![tests badge](https://img.shields.io/badge/Tests-Passing-Green.svg)

* A blog using Rails 7.0.4

* This multi-user blog's current version is `v0.0.5`

# Recent Lighthouse Scores:

![Screen Shot 2022-12-30 at 12 36 47 AM](https://user-images.githubusercontent.com/18056682/210050978-261538a1-5bbd-40bf-8e91-0b7ccc24e468.png)

This was initially made primarily with the content from the Rails guide [here](https://guides.rubyonrails.org/getting_started.html).


### Commands to be aware of include:

`bundle install` to install the bundle of gems

`./bin/dev` to serve the application with dev tailwind

`bin/rails db:create` run the migrations

`bin/rails db:migrate` run the migrations

`bin/rails test -v` to run the basic tests 

### Features

CRUD actions on a Article model, comparable to a post, following common patterns

Ability to post comments associated with the article, and like articles as a logged in user


### Future development goals

* Allow editable usernames instead of displaying email address
* Setup password reset mailer (pretty important...)
* Add 1-5 star rating (duplicate of likes?)
* Ability to choose or upload images, either as avatars or on posts









