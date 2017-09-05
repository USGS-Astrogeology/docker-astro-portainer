from usgsastro/centos7

ENV ver 1.14.0
ENV url https://github.com/portainer/portainer/releases/download/${ver}/portainer-${ver}-linux-amd64.tar.gz

ADD ${url} /opt/

VOLUME /data

WORKDIR /opt/portainer

EXPOSE 9000

ENTRYPOINT ["/opt/portainer/portainer"]
