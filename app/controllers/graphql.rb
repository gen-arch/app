require 'sinatra/json'
require_relative 'base'
require_relative '../graphql/appschema'

class Graphql < Base
  before do
    content_type :json
    protected! if production?
  end

  post '/' do
    puts params[:query]
    result = AppSchema.execute(
      params[:query],
      variables: params[:variables],
      context: { current_user: nil },
    )
    json result
  end
end
