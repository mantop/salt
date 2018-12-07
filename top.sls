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
    - ufw
    - apache
    - ssh
    - php
    - skel

  'win*':
    - windows
    - cpuz
