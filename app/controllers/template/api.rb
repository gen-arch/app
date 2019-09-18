require 'rack/contrib'
require 'sinatra/extension'
require 'sinatra/reloader'
require 'sinatra/json'

module APITemplate
  extend Sinatra::Extension

  configure do
    set :content_type,    :json
    use Rack::PostBodyContentTypeParser
  end
end
