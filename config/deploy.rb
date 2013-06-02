set :application, "uniburb"
set :repository,  "git@github.com:beilabs/govhack.git"
set :branch,          "master"
set :scm, :git
set :user, "ubuntu"
set :group, "ubuntu"
set :rails_env,       "production"
set :ssh_options,     { :forward_agent => true }
set :keep_releases, 5
ssh_options[:keys] = [File.join(ENV["HOME"], "Dropbox", "workspace", "GovHack", "govhack.pem")] 
role :web, "uniburb.uni.me"
role :app, "uniburb.uni.me"
role :db,  "uniburb.uni.me"

set :use_sudo, false
set :deploy_to, "/u/apps/uniburb"

ssh_options[:forward_agent] = true
default_run_options[:pty] = true


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# default_run_options[:shell] = '/bin/bash'
# set :shell, '/bin/bash'


namespace :deploy do

  # task :setup do
  #   run <<-CMD
  #     ln -sf #{shared_path}/config/database.yml #{latest_release}/config/database.yml
  #   CMD
  # end
  task :start do ;  end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
