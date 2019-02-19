require_relative "app_base"

class App < AppBase
  get "/" do
    'hello world'
  end
end
