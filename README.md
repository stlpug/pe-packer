# pe-packer
packer template to build PE master and an agent node for STLPUG.

- The virtualbox-iso is the only builder type specified in these templates, so in order to use them, VirtualBox must be installed.
- The Vagrant post-processor is also included to create a vagrant box for VirtualBox

# Usage

```
packer build puppetmaster/stlpug_puppetmaster.json
packer build puppetagent/stlpug_puppetagent.json
```
