libjpeg_install:
  pkg:
    - installed
    - name: libjpeg62-dev

zlib_install:
  pkg:
    - installed
    - name: zlib1g-dev

# If Ubuntu & rlease >= 11.04 we have to Symlink .so files for PIL
{% if grains['osrelease']|float >= 11.04 %}

# 64Bit Systems Symlink
{% if grains['cpuarch'] == 'x86_64' %}

libjpeg_so_link:
  file:
    - symlink
    - name: /usr/lib/libjpeg.so
    - target: /usr/lib/x86_64-linux-gnu/libjpeg.so
    - require:
      - pkg: libjpeg_install

{% endif %}

# 32bit Systems Symlink
{% if grains['cpuarch'] == 'i386' or grains['cpuarch'] == 'i686' %}

libjpeg_so_link:
  file:
    - symlink
    - name: /usr/lib/libjpeg.so
    - target: /usr/lib/i386-linux-gnu/libjpeg.so
    - require:
      - pkg: libjpeg_install

{% endif %}

{% endif %}
