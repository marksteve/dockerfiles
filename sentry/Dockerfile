FROM marksteve/python
RUN apt-get -y install libpq-dev
RUN easy_install -UZ sentry[postgres]
CMD ["sentry", "--config=/etc/sentry.conf.py", "start"]
