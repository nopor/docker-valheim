# docker-valheim
Light-weight docker server for [Valheim](https://store.steampowered.com/app/892970/Valheim/) based on [steamcmd](https://hub.docker.com/r/steamcmd/steamcmd).

Docker image available at [https://hub.docker.com/r/nopor/valheim-server](https://hub.docker.com/r/nopor/valheim-server)

## Instructions
Start the server with the following env vars:
- SERVER_NAME
- SERVER_PASSWORD
  - must be at least 5 characters long!
- SERVER_WORLD
- SERVER_PUBLIC
  - 1: listed publicly
  - 0: not listed publicly