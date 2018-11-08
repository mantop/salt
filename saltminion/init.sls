salt-minion:
 pkg.latest

/etc/salt/minion:
 file.managed:
   - source: salt://saltminion/minion_config

salt-minion.service:
 service.running:
   - name: salt-minion
   - watch:
     - file: /etc/salt/minion
