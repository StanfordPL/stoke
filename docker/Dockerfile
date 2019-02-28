FROM ubuntu:14.04
MAINTAINER Berkeley Churchill (berkeley@cs.stanford.edu)

# SSH setup
CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 22
ENV NOTVISIBLE "in users profile"
RUN useradd -ms /bin/bash -ms /bin/bash stoke

# shortcut for Z3
COPY libz3.so /home/stoke

# Build everything 
COPY setup.sh user-setup.sh /home/stoke/
RUN chmod +x /home/stoke/setup.sh && \
    /home/stoke/setup.sh && \
    rm /home/stoke/setup.sh \
       /home/stoke/user-setup.sh
