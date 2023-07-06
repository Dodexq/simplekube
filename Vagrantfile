Vagrant.configure("2") do |config|
  
  config.vm.define "simplekube" do |server|
    server.vbguest.auto_update = false if Vagrant.has_plugin?('vagrant-vbguest')
    server.vm.box = "geerlingguy/ubuntu2004"
    server.vm.hostname = "simplekube"
    server.vm.network "public_network", ip: "192.168.0.210", bridge: "wlo1"
    server.vm.provider "virtualbox" do |vb|
      vb.memory = "8192"
      vb.name = "simplekube"
      vb.cpus = "8"
    end
  end
end
