mysql_install:
  pkg:
    - installed
    - name: mysql-server

mysql_client_install:
  pkg:
    - installed
    - name: mysql-client

libmysqlclient_install:
  pkg:
    - installed
    - name: libmysqlclient-dev
    - require:
      - pkg: mysql_install
      - pkg: mysql_client_install
