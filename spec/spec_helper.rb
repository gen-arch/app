# spec/spec_helper.rb
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path('../config/environment.rb', __dir__)
require File.expand_path('../app/controllers/app.rb', __dir__)
require File.expand_path('../app/controllers/api.rb', __dir__)

module RSpecMixin
  include Rack::Test::Methods
end

RSpec.configure { |c| c.include RSpecMixin }
