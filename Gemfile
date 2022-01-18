# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby "3.0.0"

gem "sinatra"
gem "pg"

group :development, :test do
  gem "rubocop", "1.20"
  gem 'webrick'
  gem 'sinatra-contrib'
end

group :test do
  gem "rspec"
  gem "capybara"
  gem 'simplecov-console', require: false
  gem 'simplecov', require: false
end
