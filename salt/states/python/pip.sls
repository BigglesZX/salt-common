python_pip_install:
  pkg:
    - installed
    - name: python-pip
    - require:
      - pkg: python_install
      - pkg: python_dev_install

python3_pip_install:
  pkg:
    - installed
    - name: python3-pip
    - require:
      - pkg: python3_install
      - pkg: python3_dev_install

pip_run:
  cmd.run:
    - name: pip install ipdb ipython virtualenv virtualenvwrapper
    - require:
      - pkg: python_pip_install
      - pkg: python3_pip_install
