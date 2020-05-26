#!/bin/bash

#docker stop $(docker ps -a -q)

docker-compose down 

docker rm www_portal
docker rm php_portal
docker rm db_portal
docker rm src_portal

docker-compose up --build -d

#docker exec -it db_portal mysql -u root -p123 -e "ALTER USER root IDENTIFIED WITH mysql_native_password BY '123';"
#docker exec -it db_portal mysql -u root -p123 -e "FLUSH PRIVILEGES;"

#docker stop db_portal; docker start db_portal 
