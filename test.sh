#!/bin/bash

docker network create pfa

docker run --network=pfa --name mysqldb -v "$PWD/mysql/data:/var/lib/mysql" -d -e MYSQL_ROOT_PASSWORD=wowsuchsecret -e MYSQL_DATABASE=pfa he4dless/pfa-docker-desafio1-mysql

sleep 10

docker exec -i mysqldb bash -c 'mysql -uroot -p"$MYSQL_ROOT_PASSWORD" pfa < seed.sql'                                                           

docker run --network=pfa -d --name nodeapi he4dless/pfa-docker-desafio1-node

docker run --network=pfa -d --name nginx -p 8080:80 he4dless/pfa-docker-desafio1-nginx

