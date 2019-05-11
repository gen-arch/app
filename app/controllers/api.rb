require_relative 'base'

class Api < Base
  before do
    content_type :json
    protected! if production?
  end
end
