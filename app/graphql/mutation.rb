require_relative 'types/base_type'
require_relative 'mutation/create_exsample'

class MutationType < Types::BaseType
  field :create_exsample, mutatio: Mutations::CreateExsample
end
