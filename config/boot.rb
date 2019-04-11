module Boot
  CREATE_DERECTORY = [
    'tmp/pids',
    'tmp/sockets',
    'log'
  ]
  class << self
    def create_dir
      CREATE_DERECTORY.each do |path|
        mk_path = File.join(root, path)
        FileUtils.mkdir_p(mk_path) unless Dir.exist?(mk_path)
      end
    end
  end
end


Boot.create_dir
