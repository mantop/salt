C:\managed.txt:
 file.managed:
   - source: salt://windows/managed.txt

C:\csgo.bat:
 file.managed:
   - source: salt://windows/csgo.bat

C:\pubg.bat:
 file.managed:
   - source: salt://windows/pubg.bat

C:\killingfloor2.bat:
 file.managed:
   - source: salt://windows/killingfloor2.bat

C:\codww2:
 file.managed:
   - source: salt://windows/codww2.bat

windowssoftwares:
  pkg.installed:
    - pkgs:
      - npp
      - firefox
      - steam
      - vlc
      - winscp
      - python3_x64
      - chrome

chocolatey:
  pkg.installed 

choco:
  chocolatey.installed:
    - name: cygwin
