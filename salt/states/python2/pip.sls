python2_pip_install:
  pkg:
    - installed
    - name: python-pip
    - require:
      - pkg: python2_install
      - pkg: python2_dev_install
