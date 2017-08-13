# This is the first Vagrantfile ubuntu server needed in the module.

$script = <<SCRIPT
  sudo apt-get update
  sudo apt-get install -y curl
SCRIPT

Vagrant.configure(2) do |config|

  config.vm.define "node1" do |cs|
    cs.vm.box = 'bento/ubuntu-14.04'
    cs.vm.hostname = "node1.test"
    cs.vm.provision "shell", inline: $script
  end

  config.vm.define "node2" do |cs|
    cs.vm.box = 'bento/ubuntu-14.04'
    cs.vm.hostname = "node2.test"
    cs.vm.provision "shell", inline: $script
  end

end