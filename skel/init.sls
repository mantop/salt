/etc/skel/public_html:
 file.directory:
   - mode: 755
   - makedirs: True

/etc/skel/public_html/index.php:
 file.managed:
   - source: salt://skel/index.php
