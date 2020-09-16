{% from "postfix/map.jinja" import postfix with context %}

pgsql:
  pkg.installed:
    - name: {{ postfix.pgsql_pkg }}
    - watch_in:
      - service: postfix
