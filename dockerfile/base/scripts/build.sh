#!/bin/bash 
set -ex

# add book user, book group
groupadd -g ${OPERATOR_GID} ${OPERATOR_GROUP}
useradd --create-home -s /bin/bash -u ${OPERATOR_UID} -g ${OPERATOR_GID} ${OPERATOR_USER}

# add server folder
mkdir -p /www/ruby-book
chown ${OPERATOR_UID}:${OPERATOR_GID} /www/ruby-book

# install package
yum update -y
yum install -y git make gcc bzip2 openssl-devel readline-devel zlib-devel curl-devel mysql-devel which tar wget sudo libmysqlclient-dev

# install rbenv ruby-build
git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv
git clone git://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build

echo 'export RBENV_ROOT="/usr/local/rbenv"' >> /etc/profile.d/rbenv.sh
echo 'export PATH="$RBENV_ROOT/bin:$RBENV_ROOT/shims:$PATH"' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh

# install ruby
source /etc/profile.d/rbenv.sh
rbenv install 2.5.1
rbenv rehash
rbenv global 2.5.1

# install bundler
gem install bundler

# install gems use book user
#su ${OPERATOR_USER} <<EOF
#cd /www/ruby-book/
#bundle install --path vendor/bundle
#EOF
