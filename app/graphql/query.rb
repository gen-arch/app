require_relative 'types/base_type'
require_relative 'types/mongo'
require 'models/mongo'

class QueryType < Types::BaseType
  description 'The query root of this schema'

  field :diary, [Types::DiaryType], null: true do
    description 'Response All Data'
    argument :limit, Integer, required: false
  end

  field :search, [Types::DiaryType], null: true do
    description 'search'
    argument :sample, String, required: false
  end

  def diary(limit: nil)
    if limit
      Mongo.order_by(updated_at: 'desc').limit(limit)
    else
      Mongo.order_by(updated_at: 'desc')
    end
  end

  def search(**query)
    Mongo.where(**query)
  end
end
