curl -o /home/vagrant/puppet-enterprise-2015.2.3-el-6-x86_64.tar.gz https://s3.amazonaws.com/pe-builds/released/2015.2.3/puppet-enterprise-2015.2.3-el-6-x86_64.tar.gz
tar zxvf /home/vagrant/puppet-enterprise-2015.2.3-el-6-x86_64.tar.gz
/home/vagrant/puppet-enterprise-2015.2.3-el-6-x86_64/puppet-enterprise-installer -a /tmp/puppet-enterprise-2015.2.3.answers

# autosign all certs
echo '*' >> /etc/puppetlabs/puppet/autosign.conf

# Set PATH
/bin/sed -i '/^PATH/c PATH=\$PATH:/opt/puppetlabs/puppet/bin:/etc/puppetlabs/code/environments/production:/opt/puppetlabs/bin:/vagrant/files/' /root/.bash_profile
