docker-ghost
============

Ghost docker image

Build
-----

```sh
$ git clone https://github.com/marksteve/docker-ghost.git && cd docker-ghost
$ git submodule update --init --recursive
$ touch config.json
$ cat config.json
var path = require('path'),
    config;

config = {
    production: {
        url: 'http://domain.tld',
        mail: {
          ...
        },
        database: {
            client: 'mysql',
            connection: {
                host: process.env.MYSQL_PORT_3306_TCP_ADDR,  // linked container
                port: 3306,
                user: 'root',
                database: 'ghost',
                charset: 'utf8'
            },
            debug: false
        },
        server: {
            host: '0.0.0.0',
            port: '2368'
        }
    },
};

// Export config
module.exports = config;
$ sudo docker build -rm -t ghost .
```

Run
---

```sh
$ sudo docker run -d -p 2368:2368 ghost
$ sudo docker run -d -link mysql:mysql -p 2368:2368 ghost  # Link mysql container
```


Nginx
-----

```sh
server {
    listen 0.0.0.0:80;
    server_name domain.tld;
    location / {
        proxy_pass http://127.0.0.1:2368;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $http_host;
        proxy_redirect off;
    }
}
```

Tips
----

You might want to set your `config.production.server.host` to `0.0.0.0`.
