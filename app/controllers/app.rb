require 'base'
require 'slim'

class App < Base
  get '/' do
    puts settings.views
    slim :index
  end
end
