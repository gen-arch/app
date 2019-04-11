require 'base'

class Api < Base
  before do
    cross_origin
    content_type :json
    protected!
  end
end
