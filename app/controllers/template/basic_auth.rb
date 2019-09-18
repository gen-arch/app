require 'sinatra/extension'

module BasicAuth
  extend Sinatra::Extension

  helpers do
    def protected!
      unless request.request_method  == 'OPTIONS' || authorized?
        response['WWW-Authenticate'] = %(Basic realm="Restricted Area")
        throw(:halt, [401, "Not authorized\n"])
      end
    end

    def  authorized?
      @auth ||= Rack::Auth::Basic::Request.new(request.env)
      username = ENV['BASIC_AUTH_USERNAME']
      password = ENV['BASIC_AUTH_PASSWORD']
      @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == [username, password]
    end
  end

  before do
    protected!
  end
end
