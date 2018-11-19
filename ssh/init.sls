openssh-server:
 pkg.installed

/etc/ssh/sshd_config:
 file.managed:
   - source: salt://ssh/sshd_config_port

sshd.service:
 service.running:
   - name: sshd
   - watch:
     - file: /etc/ssh/sshd_config

/tmp/banner.txt:
 file.managed:
   - source: salt://ssh/banner.txt
