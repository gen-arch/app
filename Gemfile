# frozen_string_literal: true

ruby '2.5.1'
source 'https://rubygems.org'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }


# sinatra
gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-param'
gem 'sinatra-cross_origin'
gem 'rack-contrib'

# web-server
gem 'puma'

# activerecord
gem 'activerecord'
gem 'sinatra-activerecord'


# DB ---------------

# mongodb
gem 'mongoid'
gem 'bson_ext'
# ------------------

# support tool
gem 'activesupport'
gem 'procsd'

# test
gem 'rspec'

group :test do
  gem 'rspec'
  gem 'rack-test'
end

# devlopment
group :development do
  gem 'rake'
  gem 'pry-byebug'
end
