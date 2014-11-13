Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.network :private_network, ip: '10.0.33.34'
    config.vm.network :forwarded_port, host: 8030, guest: 3000
    config.vm.network :forwarded_port, host: 8050, guest: 5000

    config.vm.provider :virtualbox do |vb|
        vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
        vb.customize ["modifyvm", :id, "--memory", "512"]
    end

    config.vm.provision "puppet" do |puppet|
        	  puppet.manifests_path = "puppet/manifests"
        	  puppet.module_path = "puppet/modules"
    end

    config.vm.provision :shell, :path => "shell/node-bootstrap.sh"

end
