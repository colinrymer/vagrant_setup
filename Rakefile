require 'rake'

desc "Create and setup vagrant box with the role specified (role must be in ./roles, default is 'rails')."
task :setup do
  puts 'Installing cookbooks...'
  system "librarian-chef install"

  puts 'Provisioning system. This could take a while...'
  system "vagrant up"
  
  puts 'All done. Run "vagrant ssh" to log inside the box'
end
