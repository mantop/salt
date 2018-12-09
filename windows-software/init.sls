C:\Users\TobyC\Desktop\managed.txt:
 file.managed:
   - source: salt://windows-software/managed.txt

Bats:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "Dropping installer/launcher bats to desktop..."

C:\Users\TobyC\Desktop\csgo.bat:
 file.managed:
   - source: salt://windows/csgo.bat

C:\Users\TobyC\Desktop\pubg.bat:
 file.managed:
   - source: salt://windows/pubg.bat

C:\Users\TobyC\Desktop\killingfloor2.bat:
 file.managed:
   - source: salt://windows/killingfloor2.bat

C:\Users\TobyC\Desktop\codww2.bat:
 file.managed:
   - source: salt://windows/codww2.bat

Bats2:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "Done with bats!"

Timestamp1:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

winsoftwarepackage:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "***** Installing software collection *****"

chocolatey-installation:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installing Chocolatey..."

Timestamp2:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

chocolatey:
  pkg.installed

chocolatey-isinstalled:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installed Chocolatey"

winsoftwarepackage-list:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installing programs: Notepad ++, Firefox, Steam, VLC, Winscp, Python3_x64, Chrome, Cygwin..."

Timestamp3:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

windowssoftwarepackage:
  pkg.installed:
    - pkgs:
      - npp
      - firefox
      - steam
      - vlc
      - winscp
      - python3_x64
      - chrome

cygwin-inst:
  chocolatey.installed:
    - name: cygwin

cpuz-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installing CPUZ..."

Timestamp4:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

cpuz:
  chocolatey.installed:
    - name: cpu-z.install

cpuz-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installed CPUZ"

C:\Program Files\CPUID\CPU-Z\cpuz.ini:
 file.managed:
   - source: salt://windows-software/cpuz.ini

teamspeak-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installing Teamspeak..."

Timestamp5:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

Teamspeak:
  chocolatey.installed:
    - name: teamspeak

teamspeak-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installed Teamspeak"

skype-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installing Skype..."

Timestamp6:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

Skype:
  chocolatey.installed:
    - name: Skype

skype-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installed Skype"

osu-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installing Osu!..."

Timestamp7:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

Osu!:
  chocolatey.installed:
    - name: osu

osu-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installed Osu!"

end-of-programs:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "***** End of program installations *****"

Extracting:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "Extracting Osu! Beatmaps..."

Timestamp8:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

extract-songs:
  archive.extracted:
    - name: C:\Program Files (x86)\osu!\songs\
    - source: salt://windows-software/Songs.zip
    - enforce_toplevel: False

Extracting-complete:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "Extracting complete!"

Timestamp9:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

Extraction-complete:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "***** Done! *****"
