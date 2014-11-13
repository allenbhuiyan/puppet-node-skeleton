[![Build Status](https://travis-ci.org/davermn5/puppet-node-skeleton.svg?branch=master)](https://travis-ci.org/davermn5/puppet-node-skeleton)
#Puppet Node Skeleton

##Vagrant creates Ubuntu 12.04 VM
##Puppet provisions this VM with node.js, along with these other node dependencies:
- python-software-properties
- memcached
- curl
- build-essential
- git
- vim

##Package.json includes the following skeleton npm modules
- angular
- express
- mongodb
- cool-ascii-faces (for testing node.js)

##To install the package.json npm modules:
1. vagrant up
2. vagrant ssh
3. cd /vagrant && cp package.template.json package.json (creates fresh copy)
4. npm update --save

##Start node
- node index.js
- http://localhost:8050/ (VM: listens on port 5000)
