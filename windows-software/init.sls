C:\Users\TobyC\Desktop\managed.txt:
 file.managed:
   - source: salt://windows-software/managed.txt

cpuz-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installing CPUZ..."

Timestamp1:
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

Timestamp2:
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

Timestamp3:
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

Timestamp4:
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

Timestamp5:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

extract-songs:
  archive.extracted:
    - name: C:\Program Files (x86)\osu!\songs\
    - source: salt://windows-software/Songs.zip
    - enforce_toplevel: False

Timestamp6:
  cmd.run:
    - name: time /T >> C:\Users\TobyC\Desktop\managed.txt

Extraction-complete:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "***** Done! *****"
