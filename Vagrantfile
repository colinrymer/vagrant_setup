# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'
  config.vm.network :hostonly, '33.33.33.10'
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe "build-essential"
    chef.add_recipe "apt"
    chef.add_recipe "rvm::vagrant"
    chef.add_recipe "rvm::system"
    chef.add_recipe "git"
    chef.add_recipe "mysql::server"
    chef.add_recipe "mysql::ruby"
    chef.add_recipe "rabbitmq"
    chef.add_recipe "nginx"
  
    chef.json = {
      "mysql"=> {
        "server_root_password"=> "iloverandompasswordsbutthiswilldo",
        "server_repl_password"=> "iloverandompasswordsbutthiswilldo"
      },
      "rvm"=> {
        "vagrant"=> {
          "system_chef_solo"=> '/opt/vagrant_ruby/bin/chef-solo'
        }
      },
      "build_essential" => {
        "compiletime" => true
      }
    }

  end
end
