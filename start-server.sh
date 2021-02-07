export temp_ldpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/valheim/data/linux64:$LD_LIBRARY_PATH

cp /home/valheim/data/linux64/steamclient.so /home/valheim/data

export LD_LIBRARY_PATH=$temp_ldpath

echo "### Starting Valheim server ###"
./data/valheim_server.x86_64 \
  -name \"${SERVER_NAME}\" \
  -port ${SERVER_PORT} \
  -world \"${SERVER_WORLD}\" \
  -password \"${SERVER_PASSWORD}\" \
  -public 1 > /dev/null &

 while true; do sleep 1; done
