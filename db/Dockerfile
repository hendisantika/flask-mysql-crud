# A MySQL container.
FROM mysql:5.7
LABEL maintainer="Jeff Geerling"

EXPOSE 3306
CMD ["mysqld"]

VOLUME ["/etc/mysql", "/var/lib/mysql"]
ADD flask.sql /tmp/flask.sql
RUN /bin/bash -c "/usr/bin/mysqld_safe --skip-grant-tables &" && \
  sleep 5 && \
  mysql -uroot -proot -e "CREATE DATABASE flask" && \
  mysql -uroot -proot flask < /tmp/flask.sql