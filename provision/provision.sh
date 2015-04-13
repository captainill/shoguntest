# Install postgres
# Also runs apt-get update
bash /vagrant/provision/postgres.sh

# Basic Packages
apt-get install -y build-essential
apt-get install -y libpq-dev
apt-get install -y curl
apt-get install -y git-core
apt-get install -y make
apt-get install -y libsqlite3-dev
apt-get install -y nodejs
apt-get install -y npm


# Grunt
# Node is installed as 'nodejs', but Grunt references it as 'node'
if [ ! -f /usr/bin/node ]; then ln -s /usr/bin/nodejs /usr/bin/node; fi
# Install Grunt CLI with -g so that it works on the command line
npm install -g grunt-cli

# Bundler
gem install bundler --no-ri --no-rdoc


line='cd /vagrant/'
grep -q "$line" /home/vagrant/.bashrc || echo "$line" >> /home/vagrant/.bashrc

echo "

Provisioning Complete. CTRL+C if this shows for more than a few seconds...

Run these on your own:
cd blocks
bundle install

"
