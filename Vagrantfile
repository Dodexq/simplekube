Vagrant.configure("2") do |config|
  
  config.vm.define "minikube" do |server|
    server.vbguest.auto_update = false if Vagrant.has_plugin?('vagrant-vbguest')
    server.vm.box = "geerlingguy/ubuntu2004"
    server.vm.hostname = "minikube"
    server.vm.network "public_network", ip: "192.168.0.210", bridge: "wlo1"
    server.vm.provider "virtualbox" do |vb|
      vb.memory = "8192"
      vb.name = "minikube"
      vb.cpus = "8"
  	end
  end
end
