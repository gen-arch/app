require "sinatra/base"
require "sinatra/reloader"

class AppBase < Sinatra::Base

  configure do
    set :server, ENV['SERVER'].to_sym
    set :root, File.expand_path('../../', __dir__)
    set :public_folder, File.join(settings.root, 'app', 'public')
    set :views, File.join(settings.root, 'app', 'views')
  end

  configure :development do
    register Sinatra::Reloader
  end
end
