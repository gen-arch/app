$LOAD_PATH << File.join(__dir__, 'app')
require 'controllers/app'
require 'controllers/api'
require 'controllers/graphql'

url_root = ENV['RELATIVE_URL_ROOT'] || '/'

map(url_root) { run App }
map(url_root + '/api') { run Api }
map(url_root + '/graphql') { run Graphql }
