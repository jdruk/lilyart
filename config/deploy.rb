# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

set :application, "liliart"
set :repo_url, "https://github.com/jdruk/lilyart"

set :deploy_to, "/home/deploy/liliart"

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"

set :console_env, :production
set :console_user, :deploy
