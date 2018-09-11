# Dockerworld
# Dockerfile to install Ansible
FROM Alpine

MAINTAINER Anurag Manikkame <anurag.manikkame@gmail.com>

RUN export http_proxy=http://myproxy.server.com:8080 && \

# installing sudo

apk --update add sudo &&\
\
\

# Adding python 
apk --update add python py-pip && \

pip --http_proxy=http://myproxy.server.com:8080 install --upgrade pip && \
\
\
# Install Ansible
pip --http_proxy=http://myproxy.server.com:8080 install ansible==2.1.1.0
\
# Installing required tools 
\
apk --update add sshpass openssh-client rsync  && \
\
# Display Ansible version
CMD [ "ansible-playbook","--version" ]
