freetype_install:
  pkg:
    - installed
    - name: libfreetype6-dev

# If Ubuntu & rlease >= 11.04 we have to Symlink .so files for PIL
{% if grains['osrelease']|float >= 11.04 %}

# 64Bit Systems Symlink
{% if grains['cpuarch'] == 'x86_64' %}

libfreetype_so_link:
  file:
    - symlink
    - name: /usr/lib/libfreetype.so
    - target: /usr/lib/x86_64-linux-gnu/libfreetype.so
    - require:
      - pkg: freetype_install

{% endif %}

# 32bit Systems Symlink
{% if grains['cpuarch'] == 'i386' or grains['cpuarch'] == 'i686' %}

libfreetype_so_link:
  file:
    - symlink
    - name: /usr/lib/libfreetype.so
    - target: /usr/lib/i386-linux-gnu/libfreetype.so
    - require:
      - pkg: freetype_install

{% endif %}

{% endif %}
