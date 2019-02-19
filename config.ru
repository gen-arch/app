$:　<< File.join(__dir__, 'app', 'controllers')
require "app"

url_root = ENV['RELATIVE_URL_ROOT'] || '/'

map(url_root){ run App }
