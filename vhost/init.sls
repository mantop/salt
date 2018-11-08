/etc/apache2/sites-available/virtualhostswithsalt.conf:
 file.managed:
   - source: salt://vhost/virtualhostsexamplefile.conf

/etc/hosts:
 file.managed:
   - source: salt://vhost/hosts

# 2018-11-01+11:04:58.6066158610 ./sites-enabled/virtualhostswithsalt.conf

/etc/apache2/sites-enabled/virtualhostswithsalt.conf:
 file.symlink:
   - target: ../sites-available/virtualhostswithsalt.conf

apache2.service.vhosts:
 service.running:
   - name: apache2
   - watch:
     - file: /etc/apache2/sites-enabled/virtualhostswithsalt.conf
