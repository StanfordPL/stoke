FROM stanfordpl/stoke-base:latest
MAINTAINER Berkeley Churchill (berkeley@cs.stanford.edu)

# Build everything 
COPY . /home/stoke/stoke/
RUN chown -R stoke /home/stoke/stoke && \
    chmod +x /home/stoke/stoke/docker/user-setup.sh && \
    /home/stoke/stoke/docker/user-setup.sh
