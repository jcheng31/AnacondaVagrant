Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Guest port must match that in anaconda_config.py.
  # Host port must match that in project.sublime-project.
  config.vm.network :forwarded_port, guest: 19360, host: 1936 
  
  config.vm.provision "shell", path: "provisioning/base.sh"
end
