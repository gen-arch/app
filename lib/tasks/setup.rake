$: << File.expand_path('../../app', __dir__)
load File.join(__dir__, 'procsd.rake')

if ENV['db']
  require 'sinatra/activerecord'
  require 'sinatra/activerecord/rake'
  require 'models/active_record'
end
desc 'setup project'
task :setup do
  Rake::Task['procsd:create_yml'].invoke

  case ENV['db']
  when 'mysql'
  when 'mongodb'
  when 'sqlite'
  end
end
