# Dockerfile
FROM ubuntu:latest

LABEL maintainer="your_email@example.com"

RUN apt-get update && apt-get install -y avahi-daemon iputils-ping

EXPOSE 5353/udp

CMD ["avahi-daemon", "--no-daemon", "--enable-reflector"]