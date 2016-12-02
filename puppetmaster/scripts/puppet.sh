run_puppet() {
  # Run of Puppet configuration client already in progress; waiting 5 seconds until retry
  while :
  do
   if [ ! -f /opt/puppetlabs/puppet/cache/state/agent_catalog_run.lock ]; then
     /usr/local/bin/puppet agent -t
     break
   fi
   sleep 5
  done
}

curl -o /home/vagrant/puppet-enterprise-2016.2.1-el-6-x86_64.tar.gz https://s3.amazonaws.com/pe-builds/released/2016.2.1/puppet-enterprise-2016.2.1-el-6-x86_64.tar.gz
tar zxvf /home/vagrant/puppet-enterprise-2016.2.1-el-6-x86_64.tar.gz
/home/vagrant/puppet-enterprise-2016.2.1-el-6-x86_64/puppet-enterprise-installer -c /tmp/puppetmaster.conf

# autosign all certs
echo '*' >> /etc/puppetlabs/puppet/autosign.conf

# Invoke 1st puppet run to complete the install
run_puppet

# Set PATH
/bin/sed -i '/^PATH/c PATH=\$PATH:/opt/puppetlabs/puppet/bin:/etc/puppetlabs/code/environments/production:/opt/puppetlabs/bin:/vagrant/files/' /root/.bash_profile
