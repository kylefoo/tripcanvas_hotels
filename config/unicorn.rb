# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/tripcanvas_hotels/current"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/run/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/log/unicorn/unicorn.log"
stdout_path "/var/log/unicorn/unicorn.log"

# Unicorn socket
listen "/var/run/unicorn.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30