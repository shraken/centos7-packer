#!/bin/sh

set -e
set -x

#sudo curl -fsSLo /home/vagrant/.ssh/authorized_keys https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub
ls -al /
cp /tmp/vagrant.pub /home/vagrant/.ssh/authorized_keys

sudo tee -a /etc/ssh/sshd_config <<'EOF'
UseDNS no
EOF