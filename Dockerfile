FROM debian:jessie

COPY script.deb.sh /tmp/script.deb.sh
RUN apt-get update &&\
    apt-get upgrade -y --force-yes &&\
    apt-get install -y --force-yes curl openssh-server ca-certificates postfix &&\
    chmod +x /tmp/script.deb.sh &&\
    bash /tmp/script.deb.sh &&\
    apt-get install gitlab-ce

EXPOSE 8889
