FROM centos:centos7

ENV LANG=en_US.UTF-8 OPERATOR_USER=book OPERATOR_GROUP=book
ENV OPERATOR_UID=500 OPERATOR_GID=500

COPY scripts /tmp/scripts
RUN bash -x /tmp/scripts/build.sh
