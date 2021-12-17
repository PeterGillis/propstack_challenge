### README

Sci-Fi-API is a rudimentary Rails API proof of concept that can be queried with a browser or a tool like Postman.

It has simple **create**, **show** and **index** actions for three entities:

* /spaceships
* /missions
* /crew_members

You can view created records in the browser and create them in postman (or just look at the seed data)

## Running the API:
Clone the app in the normal way to your local machine and you can create a Spaceship with a post action and see a list via the index or an individual record via the show action.

* Ruby version: 2.6.5

* Rails version: 6.0.4.4

* Configuration: basic Rails API application, test coverage by RSpec

## Installation tips

For best results follow these steps:

* Clone the app to your local machine

* Run `bundle install`

* For database creation run `rake db:create`

* Database initialization  `rails db:migrate`
  (optional run `rails db:seed` to load basic seed data if needed.)

* How to run the test suite: Run `rspec` in your CLI


