module Environment
  def root;   File.expand_path('..', __dir__)    end
  def config; __dir__ end
  def development?; environment? == :development end
  def production?;  environment? == :production  end
  def test?;        environment? == :test        end
  def environment?; (ENV['APP_ENV'] || ENV['RACK_ENV'] || :development).to_sym end
end


include Environment
