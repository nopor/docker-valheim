#!/bin/bash
# Downloading/updating server on startup

echo "### Downloading Valheim Server ###"
steamcmd +force_install_dir /home/valheim/data +login anonymous +app_update 896660 validate +quit

exec "$@"
