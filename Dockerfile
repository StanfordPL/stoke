FROM ubuntu:14.04
MAINTAINER Berkeley Churchill (berkeley@cs.stanford.edu)
ARG TRAVIS=0

# SSH setup
CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 22
ENV NOTVISIBLE "in users profile"
RUN useradd -ms /bin/bash -ms /bin/bash stoke

# Build everything 
COPY . /home/stoke/stoke/
RUN chmod +x /home/stoke/stoke/docker/setup.sh && \
    TRAVIS=$TRAVIS /home/stoke/stoke/docker/setup.sh
