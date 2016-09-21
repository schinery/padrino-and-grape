source "https://rubygems.org"

# Padrino supports Ruby version 1.9 and later
# ruby "2.3.0"

# Distribute your app as a gem
# gemspec

# Server requirements
# gem "thin" # or mongrel
# gem "trinidad", :platform => "jruby"

# Optional JSON codec (faster performance)
# gem "oj"

# Project requirements
gem "rake"

# Component requirements
gem "grape"
gem "grape-swagger"

group :development, :test do
  gem "awesome_print"
  gem "pry-byebug"
end

group :development do
end

# Test requirements
group :test do
  gem "minitest", :require => ["minitest/autorun", "minitest/spec", "minitest/unit"]
  gem "minitest-reporters", :require => "minitest/reporters"
  gem "mocha", :require => "mocha/mini_test"
  gem "rack-test", :require => "rack/test"
end

# Padrino Stable Gem
gem "padrino", "0.13.3.2"