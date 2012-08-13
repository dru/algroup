# Customise this

user 'algroup', 'algroup'
app_path = '/home/algroup/www'

# Standart part

rails_path = "#{app_path}/current"
socket_file = "#{app_path}/shared/unicorn.sock"
pid_file = "#{app_path}/shared/pids/unicorn.pid"

worker_processes 2
preload_app true
timeout 180

listen socket_file, :backlog => 1024

working_directory rails_path

stderr_path 'log/unicorn.log'
stdout_path 'log/unicorn.log'

pid pid_file

before_fork do |server, worker|
  ActiveRecord::Base.connection.disconnect!

  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  ActiveRecord::Base.establish_connection
end
