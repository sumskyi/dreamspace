# dreamspace

## test task for Dreamspace Networks

Write a simple library application.
It must contain next models:
- Authors
- Books

(other models are up to you)

Author can have many books, book can be written by multiple authors(m2m)

Every user can browse library, search across book title and author, also there should be a feature to browse all books by author/year.

Authenticated user can add/edit book.
 
## Requirements of acceptance:

TDD, Linting

GitHub Project Page Link

Deployment instructions(Rake/Makefile)

Deployed application(free AWS instance/Heroku/etc…)


## Notes:
Each authenticated user can add/edit book, I don't think it's a right behaviour, but I'm ok with that. (not implemented)

## Installation:
1. edit **config/secrets.yml** (example included)
2. create **.env.development** and **.env.test** (examples included)
3. create databases for development/test environments (or run **RAILS_ENV=some_env bundle exec rails db:create**)
4. to run migrations: **bundle exec rails db:migrate**
5. to run tests: **bundle exec rspec**
6. to run rubocop linter: **bundle exec rubocop**
7. running web server **bundle exec rails s**

### Etc:
Please note that there is just basic rails app created:
* framework and infrastructure (see Gemfile)
* Basic models needed
* User registration
* User signing in / signing out
* no JS / CSS is not created yet, so in browser it looks terribly
