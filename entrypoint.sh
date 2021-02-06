#!/bin/bash
# Downloading/updating server on startup

echo "### Downloading Valheim Server ###"
steamcmd +login anonymous +force_install_dir /home/valheim/data +app_update 896660 validate +quit

exec "$@"
