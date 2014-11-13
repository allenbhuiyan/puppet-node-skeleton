[![Build Status](https://travis-ci.org/davermn5/puppet-node-skeleton.svg?branch=master)](https://travis-ci.org/davermn5/puppet-node-skeleton) - Master (stable) branch
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
3. cd /vagrant
4. Optional - If you care to build your own dependencies, do so here i.e:
- npm install mongodb --save
- open up 'package.json' and remove the '^' from dependencies section.
- Go to Step #6. (skip step #5)
5. npm install
- creates the modules located inside the 'node_modules' folder
6. Start node
- node index.js
- http://localhost:8050/ (VM: listens on port 5000)
