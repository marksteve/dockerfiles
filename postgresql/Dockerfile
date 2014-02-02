FROM ubuntu
MAINTAINER marksteve
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install postgresql-client-9.1 postgresql-9.1
ENV PGDATA /var/lib/pgsql/data
ENV PATH $PATH:/usr/lib/postgresql/9.1/bin
RUN mkdir -p $PGDATA
RUN chown postgres $PGDATA
USER postgres
RUN pg_ctl initdb
VOLUME ["/var/lib/pgsql/data"]
EXPOSE 5432
CMD ["postgres"]
