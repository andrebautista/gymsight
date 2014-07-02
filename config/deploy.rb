# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'gymsight'
set :repo_url, 'git@github.com:andrebautista/gymsight.git'
set :branch, 'master'
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, '/home/deploy/gymsight'
set :deploy_via, :copy
set :scm, :git
set :keep_releases, 5

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true
# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/application.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  namespace :figaro do
    desc "SCP transfer figaro configuration to the shared folder"
    task :setup do
      on roles(:app) do
       upload! "config/application.yml", "#{shared_path}/application.yml", via: :scp
      end
    end
  end


  after "deploy:started", "figaro:setup"

  after :finishing, 'deploy:cleanup'
  after :finishing, 'deploy:restart'
end
