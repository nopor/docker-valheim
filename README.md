# docker-valheim
Docker server for Valheim - Based on nopor/docker-valheim

[https://store.steampowered.com/app/892970/Valheim/](https://store.steampowered.com/app/892970/Valheim/)

Docker image available at [https://hub.docker.com/r/jazo10/valheim-server](https://hub.docker.com/r/jazo10/valheim-server)

## Env Files
Start the server with the following env vars:
- SERVER_NAME: The name of the server as it will appear in the server browser
- SERVER_PASSWORD: must be at least 5 chars long
- SERVER_WORLD: The name of the world (as it will save in the config folder)
- SERVER_PORT: `2456` (Ports of this value +2 need to be opened, ie 2456, 2457, 2458)
