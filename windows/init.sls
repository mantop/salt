C:\heimaailma.txt:
 file.managed:
   - source: salt://windows/heimaailma.txt

C:\csgo.bat:
 file.managed:
   - source: salt://windows/csgo.bat

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
