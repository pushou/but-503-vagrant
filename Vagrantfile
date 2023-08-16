# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #config.vm.box = "win-windoze"
  config.vm.box = "jborean93/WindowsServer2019"
  #config.winrm.transport = :plaintext
  #config.winrm.basic_auth_only = true
  config.winrm.timeout =   1500 
  config.vm.boot_timeout = 1500 
  (1..2).each do |i|
    config.vm.define "win-#{i}" do |win|
      win.vm.hostname = "win#{i}"         

       #win-a.vm.provider :libvirt do |libvirt|
       #      libvirt.qemu_use_session = false
       #end
       win.vm.network "private_network", ip: "192.168.123.#{120+i}", libvirt__network_name: 'vagrant-libvirt'
       #win-a.vm.network "public_network", ip: "192.168.1.210", dev: 'enxac1a3d93c4c9'
       #win-a.vm.network "public_network",
       #         dev: "enxac1a3d93c4c9",
       #         ip: "192.168.1.211",
       #         bridge: "enxac1a3d93c4c9"
       #win-a.vm.box_version = "20230601.01"
       win.vm.provider :libvirt do |libvirt|
         libvirt.cpus = 4
         libvirt.memory = 8096
       end
       win.vm.provision "provision-script", type: "shell", path: "provision.ps1"
       #win-a.vm.provision "provision-script",  privileged: "true", powershell_elevated_interactive: "true", type: "shell", path: "provision.ps1"
       #win-a.vm.provision "shell", privileged: "true", powershell_elevated_interactive: "true", inline: <<-SHELL

       #win.vm.provision "shell", inline: <<-SHELL
       #    cmd.exe /c git clone https://github.com/ElasticSA/wec_pepped.git C:\Users\vagrant\Desktop\wec_pepped
       #    cmd.exe /c git clone https://github.com/fortra/nanodump.git C:\Users\vagrant\Desktop\nanodump
       #    cmd.exe /c git clone https://github.com/sans-blue-team/DeepBlueCLI.git C:\Users\vagrant\Desktop\DeepBlueCLI
       #SHELL
    end
  end
end
