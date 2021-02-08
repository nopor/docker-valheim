# docker-valheim
Docker server for Valheim

[https://store.steampowered.com/app/892970/Valheim/](https://store.steampowered.com/app/892970/Valheim/)

Docker image available at [https://hub.docker.com/r/jazo10/valheim-server](https://hub.docker.com/r/jazo10/valheim-server)

## Docker Compose
Sample Docker Compose file
```(yml)
version: "2"
services:
  valheim:
    image: jazo10/docker-valheim:latest
    environment:
      - SERVER_NAME=Docker Valheim
      - SERVER_PASSWORD=password
      - SERVER_WORLD=Dedicated
      - SERVER_PORT=2456
    ports:
      - '2456:2456/udp'
      - '2457:2457/udp'
      - '2458:2458/udp'
      - '2456:2456/tcp'
      - '2457:2457/tcp'
      - '2458:2458/tcp'
    volumes:
      - /home/valheim/app:/home/valheim/data
      - /home/valheim/config:/root/.config/unity3d/IronGate/Valheim
      - /etc/localtime:/etc/localtime:ro
    restart: unless-stopped
```

## Environment variables
Start the server with the following env vars:
- SERVER_NAME: `Valheim Docker Server` The name of the server as it will appear in the server browser
- SERVER_PASSWORD: `valheim` must be at least 5 chars long
- SERVER_WORLD: `dedicated` The name of the world (as it will save in the config folder)
- SERVER_PORT: `2456` (Ports of this value +2 need to be opened, ie 2456, 2457, 2458)


## Mounting Directories

There are 2 directories that should be mounted
- `/root/.config/unity3d/IronGate/Valheim` - This is where the world files are saved.
- `/home/valheim/data` - This is where steam will install the application

## Credit
- based on the initial work of [nopor/docker-valheim](https://github.com/nopor/docker-valheim)
