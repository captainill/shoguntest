Vagrant.configure('2') do |config|

  # Ubuntu 14.04 with Ruby 2.1.2
  config.vm.box = "trustyruby2"
  config.vm.box_url = "https://s3-us-west-1.amazonaws.com/ahfarmer/trustyruby2.box"

  config.vm.hostname = 'blocks'

  # Provision
  config.vm.provision :shell, :path => "provision/provision.sh"

  config.vm.network :forwarded_port, guest: 3000, host: 1234

end
