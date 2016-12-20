source "https://rubygems.org"

gem "bcrypt", "~> 3.1.2"
gem "dynamic_form"
gem "exception_notification"
gem "figaro"
gem "htmlentities"
gem "jquery-rails"
# for parsing incoming mail
gem "mail"
gem "mysql2", ">= 0.3.14"
gem "newrelic_rpm"
gem "nokogiri", "= 1.6.1"
# for twitter-posting bot
gem "oauth"
# uncomment to use PostgreSQL
# NOTE: If you use PostgreSQL, you must still leave enabled the above mysql2
# gem for Sphinx full text search to function.
gem "pg"
gem "puma"
# See https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#timeout
gem "rack-timeout"
gem "rails", "4.1.12"
gem "rdiscount"
gem "thinking-sphinx", "~> 3.1.2"
gem "uglifier", ">= 1.3.0"
# gem "unicorn"  # Changed to Puma (Heroku Recommended)

group :production do
  gem "rails_12factor"
end

group :test, :development do
  gem "rspec-rails", "~> 2.6"
  gem "machinist"
  gem "sqlite3"
  gem "faker"
end

group :development do
  gem "rails-erd"
end
