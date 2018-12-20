require "sinatra"

set :server, :puma

before do
  request.script_name = "/app"
end

get "/" do
  "hello world"
end

get "/redirect" do
  redirect to("dest") 
end

get "/dest" do
  "yattaze"
end
