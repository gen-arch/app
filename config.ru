$LOAD_PATH << File.join(__dir__, 'app')
require 'controllers/app'
require 'controllers/api'

url_root = ENV['RELATIVE_URL_ROOT'] || '/'

map(url_root)          { run App }
map(url_root + '/api') { run API }
