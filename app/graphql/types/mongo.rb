require_relative 'base_type'
module Types
  class MongoType < BaseType
    field :sample, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
