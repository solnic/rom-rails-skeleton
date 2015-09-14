# rom-rails-skeleton

This is a skeleton of a rails app that uses following gems:

* `rom` for persistence
* `rom-sql` adapter for sqlite db
* `rom-repository` for extracting structs from db
* `database_cleaner` for, well, cleaning the db (in test mode)
* `dry-container` for application IoC container
* `dry-auto_inject` for auto-DI from the container
* `rspec` for tests
* `figaro` for setting up env vars in test and development mode

## Important places

* `config/initializer/rom.rb` is where we configure ROM
* `config/initializer/my_app.rb` is where we configure our app container
* `lib/my_app` a simple app container which also has access to `Rails.application`

## TODO

* add controller with some views and a capybara spec
* show how to use `dry-auto_inject`
