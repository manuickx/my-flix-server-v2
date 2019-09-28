# myFlixDb

...is a web app for creating a collection of favourite movies and tv shows.

## Features

* Search for movies or tv shows, the app is connected live to the [The Movie DB](https://www.themoviedb.org/) API

* Check movie or tv show details like: release date, trailer, poster, cast.

* Add favourite movies and tv shows to your collection

## Techs used for server - API

* Ruby 2.6.2

* Rails 5.2.3

* PostgreSQL 1.1.4

## Instalation instructions

* Fork and clone this repository

* Run bundle install to install the dependecies

* Run rails db:migrate to set up the database

* Run rails server to start the server on localhost:3000

### Important

You need an API key from [The Movie DB](https://www.themoviedb.org/) and you have to edit the credential.yml file and add your API key there. You can find instructions on how to encript your credentials [here](https://gist.github.com/db0sch/19c321cbc727917bc0e12849a7565af9)

If you want the repo for the front-end side you can find it [here](https://github.com/manuickx/my-flix-client-v2)
