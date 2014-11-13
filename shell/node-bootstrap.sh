#!/usr/bin/env bash

rm -rf /var/www
ln -fs /vagrant /var/www

# Create package.json from pre-loaded template.
# Update all package.json dependencies from '*' to latest version
cd /vagrant
cp package.template.json package.json
npm update --save
