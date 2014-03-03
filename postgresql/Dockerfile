FROM marksteve/base
MAINTAINER marksteve
RUN apt-get -y install postgresql-client-9.1 postgresql-9.1
ENV PGDATA /var/lib/pgsql/data
ENV PATH $PATH:/usr/lib/postgresql/9.1/bin
RUN mkdir -p $PGDATA
RUN chown postgres $PGDATA
USER postgres
RUN pg_ctl initdb
RUN echo "listen_addresses = '*'" >> $PGDATA/postgresql.conf
RUN echo "host all all 172.17.0.0/16 trust" >> $PGDATA/pg_hba.conf
VOLUME ["/var/lib/pgsql/data"]
EXPOSE 5432
CMD ["postgres"]
