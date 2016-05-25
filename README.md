Echo Twitter API
================

Setup
-----

1. set environment variables

`ENV['ECHO_TWITTER_OAUTH_SECRET'] = ***`
`ENV['ECHO_TWITTER_CONSUMER_SECRET'] = ***`

2. create and migrate db

`bundle exec rake db:create db:migrate`

3. seed initial tweets

`rake update_tweets`

4. run the server

`rails s`


Deployment
----------

1. Install and setup [heroku toolkit](https://toolbelt.heroku.com/)
2. `heroku create`
3. `git push heroku master`
4. `heroku run rake db:migrate`
5. `heroku run rake update_tweets`
6. Assign a [Heroku Scheduler](https://elements.heroku.com/addons/scheduler) dyno to the above rake task