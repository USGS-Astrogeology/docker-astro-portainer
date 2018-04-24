from usgsastro/centos7

ENV ver 1.16.5

RUN wget -qO- https://github.com/portainer/portainer/releases/download/$(ver}/portainer-$(ver}-linux-amd64.tar.gz | tar -xvz -C /opt

VOLUME /data

WORKDIR /opt/portainer

EXPOSE 9000

ENTRYPOINT ["/opt/portainer/portainer"]
