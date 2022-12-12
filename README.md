# <strong> Charlie Hebdo News Server </strong>

<h2> A server application for a news website </h2>


## About 

This API is set up to communicate with a client application for a news collection website. 

## Models 

* User 
* Article 

## Database Associations 

* A user `has_many` Articles. 
* An article `belongs_to` a user.

## Validations 

* A user needs to have a `unique` name.
* A user's password needs a `minimum length` of 8 characters. 
* An article cannot be instantiated without a `user_id`

## Dependencies 

The most important dependencies are : 
* active_model_serializers 
* postgres gem to provision a production database 
* rack-cors for CORS. 
* Ruby version ^3.1.2
* Rails version ^7.0.0

other dependencies can be found in the `Gemfile` of the project and be installed by running `bundle install && bundle update` 

## Running the project locally. 

To run this project in a `development` environment or on a local machine, `clone` this repository, install the dependencies and run `rails s` to get a server running. 

You are free to test the API endpoints with a suite of your choice, `Postman` is highly recommended. 
