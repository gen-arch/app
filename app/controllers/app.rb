require_relative 'base'

class App < Base
  get '/' do
    "hello world"
  end
  run! if app_file == $0
end
