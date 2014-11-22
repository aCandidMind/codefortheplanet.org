codefortheplanet.org
====================

Serves as an inspiration and information tool for software developers wanting to make the world a little bit better.

It can be considered a directory of recipes for software projects, each belonging to certain technical concepts or
technologies. Just as well their eventual product serves specific purposes into which the recipes are categorized
as well.

The site at http://www.codefortheplanet.org is not yet considered "launched" ;-) It will gradually improve.

## Development State / Next Steps

There's no user system/login yet. Currently the way to edit/delete recipes is to append ?admin=1 to the URL.
It's perfectly clear that everybody can edit and delete any recipe on the site this way. But currently that doesn't
matter too much. The user system for editing, deleting and voting on recipes will follow soon.

The contacts of recipes will get a mail (if an email address was provided) and it will be possible for visitors to 
contact them via a contact form. It would be much preferred to just list email addresses of the contacts but that
will make email spiders just too happy and thus contact forms are one of the very few sensible solutions.

If you have better ideas for email contact please open an issue here. Or if you want to jump in on development of 
those features, just do so and see the contribution guidelines below.


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

Currently there's an index.html maintenance page that will show up on the root route. You can either delete it or
go to /recipes

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
