# Pagekit

Docker image for the [Pagekit CMS](https://github.com/pagekit/pagekit)

*Uses nginx + php5-fpm*

## Usage

```sh
$ docker run -d -p 8000:80 marksteve/pagekit
```

## Use with a MySQL container

```sh
$ docker run -d \
  -e MYSQL_ROOT_PASSWORD=<PASSWORD> \
  -e MYSQL_DATABASE=pagekit
  --name pagekit-mysql
  orchardup/mysql
$ docker run -d \
  -p 8000:80 \
  --link pagekit-mysql:mysql \
  marksteve/pagekit
```

On install, use `mysql` as host.

