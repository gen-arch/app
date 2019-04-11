require 'mongoid'
Mongoid.load!(File.join(config, 'mongoid.yml'))

class Mongo
  include Mongoid::Document
  include Mongoid::Timestamps

  field :sample,  type: String
end
