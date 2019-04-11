require_relative 'base_mutation'
require 'models/mongo'

module Mutations
  class CreateExsample < BaseMutation
    description 'mutation template'

    argument :sample, String, required: true

    field :success, Boolean, null: false
    field :errors, [String], null: false

    def resolve(title:, text:, name:, tags:)
      mongo = Mongo.new(
        title: title,
        text: text,
        name: name,
        tags: tags
      )

      if mongo.save
        {
          success: true,
          errors: []
        }
      else
        {
          success: false,
          errors: mongo.errors.full_messages
        }
      end
    end
  end
end

