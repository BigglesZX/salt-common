/etc/mysql/my.cnf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://mysql/files/my.cnf
    - require:
      - pkg: mysql_install
      - pkg: mysql_client_install

/etc/mysql/conf.d/:
  file.directory:
    - user: root
    - group: root
    - mode: 644
    - makedirs: True
    - require:
      - pkg: mysql_install
      - pkg: mysql_client_install
