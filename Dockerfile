from usgsastro/centos7

#ENV ver 1.14.0
#ENV url https://github.com/portainer/portainer/releases/download/${ver}/portainer-${ver}-linux-amd64.tar.gz
#ADD ${url} /opt/

RUN wget -qO- https://github.com/portainer/portainer/releases/download/1.14.0/portainer-1.14.0-linux-amd64.tar.gz | tar -xvz -C /opt

VOLUME /data

WORKDIR /opt/portainer

EXPOSE 9000

ENTRYPOINT ["/opt/portainer/portainer"]
