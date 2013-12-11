docker-mysql
============

MySQL docker image

Build
-----

```sh
$ git clone https://github.com/marksteve/docker-mysql.git && cd docker-mysql
$ sudo docker build -rm -t mysql .
```

Setup mysql tables
------------------

```sh
$ mkdir data
$ sudo docker run -v `pwd`/data:/var/lib/mysql mysql mysql_install_db
```

Allow connection from other docker containers
---------------------------------------------

```sh
$ sudo docker run -t -i -v `pwd`/data:/var/lib/mysql mysql /bin/bash -i -l
$ mysqld_safe &
$ mysql -uroot
$ mysql> GRANT ALL PRIVILEGES ON *.* TO 'root'@'172.17.0.0/255.255.0.0';
$ mysqladmin shutdown
```

Run
---

```sh
$ sudo docker run -d -v `pwd`/data:/var/lib/mysql mysql
```

Manage
------

```sh
$ sudo docker run -i -t -link mysql:mysql mysql /bin/bash -i -l
$ mysql -uroot -h$MYSQL_PORT_3306_TCP_ADDR
```

