require "sinatra/base"
require "sinatra/namespace"

require_relative 'template/api'
require_relative 'template/cross_origin'

class API < Sinatra::Base
  register APITemplate
  register CrossOrigin
  register Sinatra::Namespace

  # api version 1
  namespace '/v1' do
    get '/get' do
      json respons: 'hello world'
    end
  end

  # api version 2
  namespace '/v2' do
  end
end
