# pe-packer
packer template to build PE master and an agent node for STLPUG.

- The virtualbox-iso is the builder type specified in these templates.  In order to use them, VirtualBox must be installed.
- The Vagrant post-processor is also included to create a vagrant box for VirtualBox

# Usage

```
packer build puppetmaster/stlpug_puppetmaster.json
packer build puppetagent/stlpug_puppetagent.json
```


### prebuild images from these templates are available here:
- [stlpug puppetmaster](http://kristianreese.com/stlpug/stlpug-master-centos-6-x64-virtualbox.box)
- [stlpug puppetagent](http://kristianreese.com/stlpug/stlpug-agent-centos-6-6-x64-virtualbox.box)

These images are also included in the Vagrantfile within the various project branchs of the stlpug/pe-vagrant repository
