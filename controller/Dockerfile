FROM ubuntu:18.04

RUN apt-get update
RUN apt install -y software-properties-common
RUN apt-add-repository -y --update ppa:ansible/ansible

# Install Ansible
# Install ifconfig
# Install Ping
RUN apt install -y ansible net-tools iputils-ping vim

# RUN mkdir -p /test_project
RUN mkdir -p /playbooks
# COPY inventory.txt /test_project/inventory.txt



#############################################################
# FROM ubuntu:18.04
 
# ENV DEBIAN_FRONTEND=noninteractive
 
# RUN apt-get update && \
#   apt-get install -y gcc python-dev libkrb5-dev && \
#   apt-get install python3-pip -y && \
#   pip3 install --upgrade pip && \
#   pip3 install --upgrade virtualenv && \
#   pip3 install pywinrm[kerberos] && \
#   apt install krb5-user -y && \ 
#   pip3 install pywinrm && \
#   pip3 install ansible
