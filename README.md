Machine setups
==============

WIP

Some scripts to setup "all-in-one" configured machines for Web (PHP) development

For now we're trying to create the configuration for:
 - Debian/Ubuntu (Tested on both)
 - Mac OS X (WIP)

To install an all new machine into a complete dev web work station, follow the steps below.

Debian/Ubuntu
-------------

*For now you must install by hands virtualbox, if you need it of course*

To perform the install just run this command line and answer the questions!

```shell
curl https://raw.githubusercontent.com/zolweb/machine-setups/master/debian.sh | sh
```
This script will install on your machine:
 - git
 - ansible
 - vim
 - ruby
    * rubygems
 - nodejs
    * npm
 - php
    * pear
    * composer
    * PHP CS
    * php5-intl
    * php5-curl
    * php5-mysql
    * php5-sqlite
 - vagrant
    * hostmanager
 - oh-my-zsh


License
-------

Licensed under the MIT License
