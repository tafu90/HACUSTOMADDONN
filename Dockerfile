# Dockerfile for Avahi Reflector Add-on
##FROM ubuntu:latest

##LABEL maintainer="you@example.com"

# Install Avahi daemon
##RUN apt-get update && apt-get install -y avahi-daemon avahi-utils dbus

# Copy our startup script
##COPY run.sh /run.sh
##RUN chmod +x /run.sh

##CMD ["/run.sh"]

FROM homeassistant/armv7-base:latest

# Install Avahi and socat for mDNS forwarding
RUN apk add --no-cache avahi socat

# Copy the run.sh script into the container
COPY run.sh /usr/local/bin/run.sh

# Make the script executable
RUN chmod +x /usr/local/bin/run.sh

# Set the run.sh as the main entry point
ENTRYPOINT ["/usr/local/bin/run.sh"]
