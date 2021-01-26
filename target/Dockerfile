FROM ubuntu:18.04

RUN apt-get update

# Install Ansible
# Install ifconfig
# Install Ping
RUN apt install -y net-tools iputils-ping openssh-server vim

RUN useradd remote_user && \
    echo "remote_user:Ecmbu!23" | chpasswd && \
    mkdir -p /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh && \
    chmod 777 /home/remote_user

COPY remote_user.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

# https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i
