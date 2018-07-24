#!/bin/bash 
set -ex

groupadd -g ${OPERATOR_GID} ${OPERATOR_GROUP}
useradd --create-home -s /bin/bash -u ${OPERATOR_UID} -g ${OPERATOR_GID} ${OPERATOR_USER}
