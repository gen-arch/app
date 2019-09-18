require 'sinatra/extension'
require 'sinatra/cross_origin'

module CrossOrigin
  extend Sinatra::Extension

  configure :development do
    register Sinatra::CrossOrigin
    enable :cross_origin
    set :allow_origin, :any
    set :allow_methods, [:get, :post, :options]
    set :allow_credentials, true
    set :max_age, "1728000"
    set :expose_headers, ['Content-Type']
  end

  before do
    cross_origin if development?
  end

  if development?
    options '*' do
      response.headers['Allow'] = 'HEAD,GET,PUT,POST,DELETE,OPTIONS'
      response.headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept'
      response.headers["Access-Control-Allow-Origin"] = "*"
      status 200
    end
  end
end
