require "sinatra/base"

class AppBase < Sinatra::Base
  configure do
    set :server, ENV['SERVER']
    set :root, File.expand_path('../../', __dir__)
    set :public_folder, File.join(settings.root, 'app', 'public')
    set :views, File.join(settings.root, 'app', 'views')
  end
end
