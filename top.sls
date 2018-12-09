base:
#  '*':

  'linux*':
    - ufw
    - apache
    - ssh
    - php
    - terminal
    - skel
    - neofetch
  
  'master':
    - ufw-master
    - apache
    - ssh
    - php
    - skel

  'windows10*':
    - windows-software
    - OOSU10
  
  'windows7*':
    - windows
