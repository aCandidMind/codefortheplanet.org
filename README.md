codefortheplanet.org
====================

Serves as an inspiration and information tool for software developers wanting to make the world a little bit better.

The site at http://www.codefortheplanet.org is not yet considered "launched" ;-) This should happen in between the next 12 hours.

## System dependencies

The Ruby version (currently 2.1.4) will be chosen by the files Gemfile and .ruby-version.

You will need to install postgres as this is the database in use. On unix environments it's likely that you have to
install a development package as well, it might be called `libpq-dev`. Full installation instructions can be found
on the web for almost every imaginable combination. 

## Database Configuration & Setup

If you intend to have non-default database names or authentication set things up in `config/database.yml`

Run `rake db:setup` to let rails create the databases and run the migrations for you.
 
As soon as there are some seeds in `db/seeds.rb` to bootstrap you with data, you can run `rake db:seed` to
have it created. 

## Running test suite & server

Nothing special, to run the test suite

    bundle exec rake test

That server will boot up if you run

	bundle exec rails s

## Deployment instructions

The project is deployed via the heroku toolbelt. If you want to join the development regularly contact
[@code4theplanet](http://twitter.com/code4theplanet) on twitter.


## Contact


* Home page: http://www.codefortheplanet.org
* Bugs/Issues: https://github.com/aCandidMind/codefortheplanet.org/issues
* Chat: https://gitter.im/codefortheplanet.org/chat


## Contributing

* Fork it ( https://github.com/aCandidMind/codefortheplanet.org/fork )
* Create your feature branch (git checkout -b my-new-feature)
* Commit your changes (git commit -am 'Add some feature')
* Push to the branch (git push origin my-new-feature)
* Create new Pull Request
