python_lxml_install:
  pkg:
    - installed
    - name: python-lxml
    - require:
      - pkg: python_install
      - pkg: python_dev_install

python_libffi_install:
  pkg:
    - installed
    - name: libffi-dev
    - require:
      - pkg: python_install
      - pkg: python_dev_install

python_libxml_install:
  pkg:
    - installed
    - name: libxml2-dev
    - require:
      - pkg: python_install
      - pkg: python_dev_install

python_libxslt_install:
  pkg:
    - installed
    - name: libxslt1-dev
    - require:
      - pkg: python_install
      - pkg: python_dev_install
