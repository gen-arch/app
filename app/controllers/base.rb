require 'sinatra/base'
require 'sinatra/reloader'

class Base < Sinatra::Base
  configure do
    set :server, ENV['SERVER'].to_sym
    set :root, ENV['APP_ROOT'] || File.expand_path('../../', __dir__)
    set :public_folder, File.join(settings.root, 'app', 'aseets')
    set :views, File.join(settings.root, 'app', 'views')
  end

  configure :development do
    register Sinatra::Reloader
  end

  helpers do
    def protected!
      unless authorized?
        response['WWW-Authenticate'] = %(Basic realm="Restricted Area")
        throw(:halt, [401, "Not authorized\n"])
      end
    end

    def authorized?
      @auth ||= Rack::Auth::Basic::Request.new(request.env)
      username = ENV['BASIC_AUTH_USERNAME']
      password = ENV['BASIC_AUTH_PASSWORD']
      @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == [username, password]
    end
  end
end
