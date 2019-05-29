require_relative 'base'
require "sinatra/json"
require "sinatra/namespace"

class Api < Base
  before do
    content_type :json
    protected! if production?
  end
  # api version 1
  namespace '/v1' do
    get '/get' do
      json { respons: 'hello world'}
    end
  end

  # api version 1
  namespace '/v2' do
  end
end
