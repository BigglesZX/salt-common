libssl_install:
  pkg:
    - installed
    - name: libssl-dev

htop_install:
  pkg:
    - installed
    - name: htop

fail2ban_install:
  pkg:
    - installed
    - name: fail2ban

certbot_install:
  pkg:
    - installed
    - name: certbot

python-certbot_install:
  pkg:
    - installed
    - name: python-certbot-nginx
