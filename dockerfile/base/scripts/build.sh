#!/bin/bash 
set -ex

# add book user, book group
groupadd -g ${OPERATOR_GID} ${OPERATOR_GROUP}
useradd --create-home -s /bin/bash -u ${OPERATOR_UID} -g ${OPERATOR_GID} ${OPERATOR_USER}

# add server folder
mkdir -p /www/ruby-book
chown ${OPERATOR_UID}:${OPERATOR_GID} /www/ruby-book
