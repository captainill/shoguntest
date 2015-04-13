Ultratext
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
cd blocks
bundle install
```


Rails
---

Just run these commands to get the rails server running.

```
cd blocks
rake db:migrate
rails server
```


FrontEnd - Compiling bundle
---

From /vagrant

    $ npm start


Database
---

After you connect to the VM with `vagrant ssh`, you con connect to postgres with this command:

    PGUSER=vagrant PGPASSWORD=root psql -h localhost blocks

If you want to drop the entire blocks database and start from scratch, do this:

    sudo su - postgres -c "psql -c 'DROP DATABASE blocks'"
    sudo su - postgres -c "psql -c 'CREATE DATABASE blocks WITH OWNER vagrant'"

If rails generate ever hangs on your run

    spring stop

any rails command will restart it


Pushing
---

To push to staging (`ultratextstage.herokuapp.com`) just run:

    sh heroku.sh

AFTER you have pushed there and you have tested the home page and
at least one player page, do a push to production:

    sh heroku.sh prod


Blog
---

Posts are added as a bit of a hack based on seed files.

- Add seed rake files to db/posts
- Add any static images to be served to public/images/blog and reference them by dropping /public from the path
- Markdown is supported but if you need to set the width/height of an image you can just use html for the img tag
- Then run the command example below

```
cd blocks
rake db:post:post_file_name # Name of the file EXCLUDING the .rb extension 
```

-for production on heroku use

```
heroku run bash
rake db:post:post_file_name --trace
```

FrontEnd - Compiling bundle
---

From /vagrant

    $ npm start
