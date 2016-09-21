# Padrino and Grape

A quick demo project showing how to integrate Padrino and Grape.

<!-- MarkdownTOC -->

- [Project dependencies](#project-dependencies)
- [Start Application](#start-application)
- [Run Tests](#run-tests)
- [TODOs](#todos)

<!-- /MarkdownTOC -->

## Project dependencies

* RVM
* Ruby 2.3.0p0

It seems that newer versions of RVM don't automatically installer Bundler, so install that before running `bundle` to install the other gems.

```sh
gem install bundler
bundle
```

## Start Application

To start the application run:

```sh
rackup
```

You should be able to access the application the App from [http://localhost:9292/](http://localhost:9292/) and the API at [http://localhost:9292/api/v1/](http://localhost:9292/api/v1/) in your browser.

## Run Tests

Use:

```sh
rake test
```

## TODOs

* Figure out what all the warning are when running `rake test`
* Add Grape Swagger
* Add some kind of DB etc
* Add some more documentation about findings etc
