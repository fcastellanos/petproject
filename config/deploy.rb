require 'capistrano/ext/multistage'

set :stages, ["vagrant"]
set :default_stage, "vagrant"

set :application, "petproject"

set :scm, :git
set :repository, "git://github.com/fcastellanos/petproject.git"
set :scm_passphrase, ""

set :user, "vagrant"

set :ssh_options, {:forward_agent => true, keys: ['~/.vagrant.d/insecure_private_key']}
