# Dockerfile for Avahi Reflector Add-on
FROM ubuntu:latest

LABEL maintainer="you@example.com"

# Install Avahi daemon
RUN apt-get update && apt-get install -y avahi-daemon avahi-utils dbus

# Copy our startup script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
