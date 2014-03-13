python2_virtualenv_install:
  pkg:
    - installed
    - name: python-virtualenv
    - require:
      - pkg: python2_install
      - pkg: python2_dev_install

python2_virtualenvwrapper_install:
  pip:
    - installed
    - name: virtualenvwrapper
    - require:
      - pkg: python2_virtualenv_install
      - pkg: python2_pip_install

{{ pillar['virtualenv_dir'] }}:
  file.directory:
    - user: {{ pillar['user'] }}
    - group: {{ pillar['user'] }}
    - mode: 775
    - require:
      - pip: python2_virtualenvwrapper_install

#python2_source_virtualenvwraper:
#  file:
#    - managed
#    - name: {{ pillar['home_dir'] }}/.bashrc
#    - user: {{ pillar['user'] }}
#    - group: {{ pillar['user'] }}
#    - mode: 644
#    - source: salt://poke/files/bashrc
#    - template: jinja
#    - defaults:
#        source_virtualenv: False
#    - context:
#        source_virtualenv: True
#    - require:
#      - file: install_poke_bashrc
