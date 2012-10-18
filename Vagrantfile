# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'
  config.vm.network :hostonly, '33.33.33.10'
  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"
    chef.cookbooks_path = ["cookbooks"]

    chef.add_role "rails"
  end
end
