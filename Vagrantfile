serversetup = <<EOF
#!/bin/bash
set -o xtrace -o errexit -o pipefail #-o nounset
cd /home/vagrant
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y ruby-full sqlite3 libsqlite3-dev nodejs
sudo gem install rails --no-document --version '~> 5.1.0'
rails new rails_bookshelf --database=sqlite3
cd ./rails_bookshelf
rails generate scaffold book title:string author:string
rails db:migrate
EOF

Vagrant.configure(2) do |config|
  config.vm.box = 'bento/ubuntu-16.04'
  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'emory-interview-homework'
    vb.cpus = 2
    vb.memory = 2048
  end
  config.vm.network :forwarded_port, host: 3000, host_ip: '127.0.0.1', guest: 3000
  config.vm.provision :shell, privileged: false, inline: serversetup
  config.vm.synced_folder "src", "/home/vagrant/rails_bookshelf"
end
