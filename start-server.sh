export temp_ldpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/valheim/data/linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

ln -s /home/valheim/data/linux64/steamclient.so /home/valheim/data/steamclient.so
mkdir /root/.steam/sdk64
ln -s /home/valheim/data/linux64/steamclient.so /root/.steam/sdk64/steamclient.so

export LD_LIBRARY_PATH=$temp_ldpath

echo "### Starting Valheim server ###"

while true; do
/home/valheim/data/valheim_server.x86_64 \
  -nographics \
  -batchmode \
  -name ${SERVER_NAME} \
  -port ${SERVER_PORT} \
  -world ${SERVER_WORLD} \
  -password ${SERVER_PASSWORD} \
  -public ${SERVER_PUBLIC}
done
