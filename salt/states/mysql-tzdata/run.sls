tzdata_mysql_install:
  pkg:
    - installed
    - name: mysql-server

tzdata_mysql_client_install:
  pkg:
    - installed
    - name: mysql-client

tzdata_run:
  cmd.run:
    - name: mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root mysql
    - require:
      - pkg: tzdata_mysql_install
      - pkg: tzdata_mysql_client_install

tzdata_restart:
  cmd.run:
    - name: service mysql restart
