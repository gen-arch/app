require 'base'
require 'slim'

class App < Base
  get '/' do
    slim :index
  end
end
