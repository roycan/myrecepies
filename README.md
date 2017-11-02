# README

myrecepies 
 - minitest
 -- integration testing
 -- unit testing

 - layout
 -- integration test checking for the presence of the route
 -- use generator: rails generate integraion_test pages
 -- TDD


Recipe 
 - recipe should be valid
 - name should be present
 - description should be present 
 - chef_id should be present **
 - maximum length for name and description, maybe a minimum for description


Chef - 
 - chefname should be present
 - email should be present
 - size restrictions on email and chefname
 - email should be valid format
 - email should be unique, case insensitive

------------------


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


-----------------
## Getting started

To get started with the app, clone the repo and then install the needed gems:

```

$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/bo
