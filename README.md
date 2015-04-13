Rails Template
===

Vagrant
---

Before you can do anything else you need Vagrant and VirtualBox.

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant 1.1+](http://vagrantup.com)

Then build the box with `vagrant up` and log in with `vagrant ssh`.


Bundler
---

The provisioning doesn't run bundler, so run this on your own:

```
cd shogun
bundle install
```


Rails
---

Just run these commands to get the rails server running.

```
cd shogun
rake db:migrate
rails server
```


Heroku deploy
---

Staging

    sh heroku.sh

Prod

    sh heroku.sh prod

