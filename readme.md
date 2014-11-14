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

##Get it configured, and running:
1. vagrant up
2. vagrant ssh
3. cd /vagrant
4. Optional - If you care to build your own dependencies, do so here i.e:
  4. npm install mongodb --save
  4. open up 'package.json' and remove the '^' from dependencies section.
  4. Go to Step #6. (skip step #5)
5. npm install
  5. creates the npm modules as listed in 'dependencies' section inside the package.json file.
6. Start node
  6. node index.js
  6. http://localhost:8050/ (VM: listens on port 5000)
  
##Deploy to Heroku (on your host machine, non-VM)
1. heroku login
2. heroku create
3. git push heroku master
4. heroku ps:scale web=1
5. heroku open
  5. See it in action [here](https://immense-citadel-2006.herokuapp.com/)
