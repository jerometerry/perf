Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provider "virtualbox" do |v|
	  v.name = 'FlameGraphs'
	  v.memory = 2048
	  v.cpus = 2
  end
  config.vm.provision "war", type: "shell", path: "./configure.sh"
end
