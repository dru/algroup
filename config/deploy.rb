require 'bundler/capistrano'
require 'rvm/capistrano'
require 'capistrano_colors'

set :application, 'algroup'
set :deploy_to, "/home/#{application}/www/"

server 'algroup.com.ua', :app, :web, :db, :primary => true

set :ssh_options, { :forward_agent => true }
set :user, application
set :use_sudo, false

set :scm, :git
set :repository, 'git@github.com:dru/algroup.git'
set :deploy_via, :remote_cache

set :keep_releases, 2

require 'capistrano-unicorn'
