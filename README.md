# serverspec sandbox

## Getting started
### Download and install tools
- Download and install `VirtualBox`
  - https://www.virtualbox.org/wiki/Downloads
- Download and install `vagrant`
  - https://www.vagrantup.com/downloads.html
- Install `ansible`
  - https://docs.ansible.com/ansible/intro_installation.html

### Setup
- Install bundler globally
  ```
  $ gem install bundler -v 1.10.5  
  ```
- Install bundle locally
  ```
  $ bundle install --path vendor/bundle
  ```

### Confirmed operating environment
- OS X El Capitan (10.11.6)
- ruby 2.2.5p319
  - bundler 1.10.5
- Vagrant 1.7.4
- ansible 1.9.6

## Run serverspec (to vagrant virtual environment)
```
$ bundle exec rake spec

Package "mysql-community-server"
  should be installed

Service "mysqld"
  should be enabled
  should be running

Package "nginx"
  should be installed

Service "nginx"
  should be enabled
  should be running

Port "80"
  should be listening

Package "php"
  should be installed with version "5.6"

Service "php-fpm"
  should be enabled
  should be running

Command "php -m | grep gd"
  stdout
    should contain "gd"

Command "php -m | grep imagick"
  stdout
    should contain "imagick"

Command "php -m | grep mbstring"
  stdout
    should contain "mbstring"

Command "php -m | grep mcrypt"
  stdout
    should contain "mcrypt"

Command "php -m | grep xml"
  stdout
    should contain "xml"

Finished in 0.90206 seconds (files took 51.26 seconds to load)
15 examples, 0 failures
```
