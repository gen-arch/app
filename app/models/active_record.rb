require "yaml"

file_path = File.expand_path("../../config/database.yml", __dir__)
config = YAML.load_file(file_path).transform_keys(&:to_sym)

ActiveRecord::Base.establish_connection(**config)
class Hoge < ActiveRecord::Base
end
