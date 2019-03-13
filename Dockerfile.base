FROM ubuntu:14.04
MAINTAINER Berkeley Churchill (berkeley@cs.stanford.edu)

# SSH setup
CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 22
ENV NOTVISIBLE "in users profile"
RUN useradd -ms /bin/bash -ms /bin/bash stoke

# Build everything 
COPY . /home/stoke/base/
RUN chmod +x /home/stoke/base/scripts/docker/base-setup.sh && \
    TRAVIS=$TRAVIS /home/stoke/base/scripts/docker/base-setup.sh
