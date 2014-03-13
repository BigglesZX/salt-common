mysql_service:
  service:
    - running
    - name: mysql
    - enable: True
    - watch:
      - file: /etc/mysql/my.cnf
      - pkg: mysql_install
    - require:
      - file: /etc/mysql/my.cnf
      - pkg: mysql_install
