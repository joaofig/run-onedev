cd onedev-latest || exit
chmod +x bin/server.sh
sed -i "s/http_port=6610/http_port=$PORT/" conf/server.properties

sed -i "s/hibernate.connection.url=jdbc:postgresql:\/\/localhost:5432\/onedev/hibernate.connection.url=$hibernate_connection_url/" \
  conf/hibernate.properties
sed -i "s/hibernate.connection.username=postgres/hibernate.connection.username=$hibernate_connection_username/" \
  conf/hibernate.properties
sed -i "s/hibernate.connection.password=postgres/hibernate.connection.password=$hibernate_connection_password/" \
  conf/hibernate.properties

./bin/server.sh console
