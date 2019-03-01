$LOAD_PATH << File.join(__dir__, 'app', 'controllers')
require 'app'
require 'api'

url_root = ENV['RELATIVE_URL_ROOT'] || '/'

map(url_root) { run App }
map(url_root + '/api') { run App }
