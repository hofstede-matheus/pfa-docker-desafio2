# pfa-docker-desafio1
Desafio 1 do PROGRAMA FULL CYCLE DE ACELERAÇÃO de Docker.

Desafio 1
Crie um programa utilizando sua linguagem de programação favorita que faça uma listagem simples do nome de alguns módulos do curso Full Cycle os trazendo de um banco de dados MySQL. Gere a imagem desse container e a publique no DockerHub.

Gere uma imagem do nginx que seja capaz que receber as solicitações http e encaminhá-las para o container.

Crie um repositório no github com todo o fonte do programa e das imagens geradas.

Crie um arquivo README.md especificando quais comandos precisamos executar para que a aplicação funcione recebendo as solicitações na porta 8080 de nosso computador. Lembrando que NÃO utilizaremos Docker-compose nesse desafio.

Para rodar:
  - execute o script test.sh (testado apenas no linux)
  - ou execute os seguintes comandos:
    - docker network create pfa
    - docker run --network=pfa --name mysqldb -v "$PWD/mysql/data:/var/lib/mysql" -d -e MYSQL_ROOT_PASSWORD=wowsuchsecret -e MYSQL_DATABASE=pfa he4dless/pfa-docker-desafio1-mysql
    - docker exec -i mysqldb bash -c 'mysql -uroot -p"$MYSQL_ROOT_PASSWORD" pfa < seed.sql'
    - docker run --network=pfa -d --name nodeapi he4dless/pfa-docker-desafio1-node
    - docker run --network=pfa -d --name nginx -p 8080:80 he4dless/pfa-docker-desafio1-nginx
