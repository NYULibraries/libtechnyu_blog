# Load rvm-capistrano gem
require "rvm/capistrano"

set :ssh_options, {:forward_agent => true}
set :app_title, "libtechnyu"
set :application, "#{app_title}_blog_repos"

# RVM  vars
set :rvm_ruby_string, "2.3.3"
set :rvm_type, :user

# Bundle vars
set :bundle_without, [:development, :test]

# Git vars
set :repository, "git://github.com/NYULibraries/libtechnyu_blog.git"
set :scm, :git
set :deploy_via, :remote_cache

# Environments
set :keep_releases, 5
set :use_sudo, false

# Private data
set :user, ENV['BLOG_USER']
set :app_path, ENV['BLOG_APP_PATH']
set :deploy_to, "#{app_path}#{application}"
role :blog, ENV['BLOG_SERVER_1'], ENV['BLOG_SERVER_2']

after "deploy:update", "deploy:generate"
after "deploy", "deploy:create_symlink"
after "deploy:create_symlink", "deploy:create_app_symlink"

namespace :deploy do

  [:start, :stop, :restart, :finalize_update].each do |t|
    desc "#{t} task is a no-op with jekyll"
    task t, :roles => :app do ; end
  end

  desc 'Run octopress to update site'
  task :generate do
    run "cd #{current_release} && bundle install"
    run "cd #{current_release} && bundle exec rake generate"
  end

  task :create_app_symlink do
    run "rm -rf #{app_path}#{app_title} && ln -s #{current_path}/public #{app_path}#{app_title}"
  end

end
