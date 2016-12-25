heroku:
  pkg.installed:
    - name: heroku
  pkgrepo.managed:
    - file: /etc/apt/sources.list.d/heroku.list
    - name: deb https://cli-assets.heroku.com/branches/stable/apt ./
    - key_url: http://cli-assets.heroku.com/apt/release.key
    - require_in:
      - pkg: heroku
