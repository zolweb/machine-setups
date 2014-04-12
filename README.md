Machine setups
==============

WIP

Some scripts to setup "all-in-one" configured machines for Web (PHP) development

For now we're trying to create the configuration for:
 - Debian/Ubuntu
 - Mac OS X

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
 - ruby with rubygems
 - nodejs with npm
 - php with composer and pear
 - php cs
 - vagrant with hostmanager plugin


License
-------

Licensed under the MIT License
