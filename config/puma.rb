require 'fileutils'
require_relative 'boot'
require_relative 'environment'

# default directory
directory root
# env mode
environment environment?
# process id file
pidfile "#{root}/tmp/pids/puma.pid"

# puma status file
state_path "#{root}/tmp/pids/puma.state"

# stdout, stderr put file
stdout_redirect "#{root}/log/app.log", "#{root}/log/app_err.log", true

# thread settting low, high
threads 0, 16

# socket type
#
bind "unix:///#{root}/tmp/sockets/puma.sock"
bind 'tcp://0.0.0.0:4567' unless production?

# pumactl
activate_control_app
