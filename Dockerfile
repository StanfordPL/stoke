FROM stanfordpl/stoke-base:latest
MAINTAINER Berkeley Churchill (berkeley@cs.stanford.edu)

COPY . /home/stoke/stoke/
# update binaries
RUN apt-get update && apt-get upgrade -y
# compiler
RUN chown -R stoke /home/stoke/stoke && \
    chmod +x /home/stoke/stoke/scripts/docker/user-setup.sh && \
    /home/stoke/stoke/scripts/docker/user-setup.sh
