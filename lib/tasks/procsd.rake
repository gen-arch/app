require 'yaml'

ROOT = File.expand_path('../../', __dir__)

namespace :procsd do
  desc 'create procsd.yml'
  task :create_yml do
    procsd = { 'app' => "", 'environment' => {} }
    print "create directory?(default: #{ROOT}) : "
    dir = $stdin.gets.chomp
    dir = ROOT if dir.empty?

    print 'app name? : '
    name = $stdin.gets.chomp
    name = 'app' if name.empty?
    procsd['app'] = name

    print 'first env?(default: development) : '
    env = $stdin.gets.chomp
    env = 'development' if env.empty?
    procsd['environment'].merge!('APP_ENV' => env)

    print 'relative_url_root?(default: /) : '
    url = $stdin.gets.chomp
    url = '/' if url.empty?
    procsd['environment'].merge!('RELATIVE_URL_ROOT' => url)

    print 'basic auth? (default: no)[yes|no]: '
    basic = $stdin.gets.chomp
    basic = 'no' if basic.empty?

    if basic == 'yes'
      print 'basic username? : '
      basic_name = $stdin.gets.chomp
      abort 'name is empty' if basic_name.empty?
      procsd['environment'].merge!('BASIC_AUTH_USERNAME' => basic_name)


      print 'basic username? : '
      basic_pass = $stdin.gets.chomp
      abort 'password is empty' if basic_pass.empty?
      procsd['environment'].merge!('BASIC_AUTH_PASSWORD' => basic_pass)
    end

    YAML.dump(procsd, open(File.join(dir, 'procsd.yml'), 'w'))
  end
end
