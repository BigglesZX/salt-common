python2_lxml_install:
  pkg:
    - installed
    - name: python-lxml
    - require:
      - pkg: python2_install
      - pkg: python2_dev_install
      - pkg: libxslt_install
