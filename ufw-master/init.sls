/etc/ufw/user.rules:
  file.managed:
    - source: salt://ufw-master/user.rules

/etc/ufw/user6.rules:
  file.managed:
    - source: salt://ufw-master/user6.rules

ufw.running:
 service.running:
   - name: ufw
   - enable: True   
   - watch:
     - file: /etc/ufw/user.rules
     - file: /etc/ufw/user6.rules
