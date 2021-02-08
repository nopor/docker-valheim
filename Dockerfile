FROM steamcmd/steamcmd:latest

RUN apt-get update && \
	apt-get -y install --no-install-recommends libsdl2-2.0-0:i386 && \
	rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/valheim/data/ && mkdir -p /home/valheim/scripts/ && ulimit -n 2048

WORKDIR /home/valheim

ADD scripts /home/valheim/scripts

RUN chmod +x /home/valheim/scripts/init.sh && chmod +x /home/valheim/scripts/start-dedicated.sh

EXPOSE 2456/udp
EXPOSE 2456/tcp
EXPOSE 2457/udp
EXPOSE 2457/tcp
EXPOSE 2458/udp
EXPOSE 2458/tcp

ENV SERVER_NAME="Valheim Docker Dedicated Server"
ENV SERVER_PASSWORD="valheim"
ENV SERVER_WORLD="Dedicated"
ENV SERVER_PORT=2456

VOLUME ["/root/.config/unity3d/IronGate/Valheim","/home/valheim/data"]

ENTRYPOINT  ["/bin/sh", "scripts/init.sh"]

CMD ["/bin/sh", "scripts/start-dedicated.sh", "-n"]
