name "rails"
run_list(
  "recipe[build-essential]",
  "recipe[apt]",
  "recipe[rvm::vagrant]",
  "recipe[rvm::system]",
  "recipe[git]",
  "recipe[mysql::server]",
  "recipe[mysql::ruby]",
  "recipe[rabbitmq]",
  "recipe[nginx]"
)
default_attributes(
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
)
