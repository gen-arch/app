require 'fileutils'

CREATE_DERECTORY = [
  'tmp/pids',
  'tmp/sockets',
  'log'
]

CREATE_DERECTORY.each do |path|
  mk_path = File.join(path)
  FileUtils.mkdir_p(mk_path) unless Dir.exist?(mk_path)
end

# process id file
pidfile "tmp/pids/puma.pid"

# puma status file
state_path "tmp/pids/puma.state"

# stdout, stderr put file
stdout_redirect "log/app.log", "log/app_err.log", true

# thread settting low, high
threads 0, 16

# socket type
bind 'tcp://0.0.0.0:4567'

# pumactl
activate_control_app
