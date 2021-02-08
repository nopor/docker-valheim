# docker-valheim
Docker server for Valheim

[https://store.steampowered.com/app/892970/Valheim/](https://store.steampowered.com/app/892970/Valheim/)

Docker image available at [https://hub.docker.com/r/jazo10/valheim-server](https://hub.docker.com/r/jazo10/valheim-server)

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
- based on the initial work of   [https://github.com/nopor/docker-valheim](nopor/docker-valheim)
