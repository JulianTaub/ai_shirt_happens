# ShirtHub

ShirtHub is a recommendation engine built on top of a Rails app used to track our instructor's tee-shirt collection. Proof-of-concept project to demonstrate the implementation of artificial intelligence principles.

## Features

- Stored user and shirt data using SQLite
- Populated database with random users, each with a random collection of shirts
- Implemented Recommendable gem to compare users and suggest shirts based on those similarities 
- Evaluated and stored user set similarities with Redis
- Handled simultaneous queries to Redis using Sidekiq gem
- Asynchronous loading and parallax using AJAX and jQuery

## Dependancies

**Gems**

- sidekiq
- recommendable
- redis (in recommendable.rb initializer file)
- sqlite (development)
- pg (production)
- jquery-rails


## Authors

Built by Julian Taub and Lucy Orbach in May 2015

## Credit 

Our instructor Ben Gross for his support. Steven Nunez for permission to build on his shirt app.

## License

ShirtHub is MIT Licensed. See LICENSE for details.
