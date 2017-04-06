# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 3*1024]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
  end
  config.vm.hostname = "PerformanceMeetup.local"
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
