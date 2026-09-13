cd onedev-latest || exit
chmod +x bin/server.sh
sed -i "s/http_port=6610/http_port=$PORT/" conf/server.properties
./bin/server.sh console
