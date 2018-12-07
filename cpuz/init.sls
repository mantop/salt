cpuz-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installing CPUZ..."

cpuz:
  chocolatey.installed:
    - name: cpu-z.install

cpuz-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installed CPUZ"

C:\Program Files\CPUID\CPU-Z\cpuz.ini:
 file.managed:
   - source: salt://cpuz/cpuz.ini

teamspeak-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installing Teamspeak..."

Teamspeak:
  chocolatey.installed:
    - name: teamspeak

teamspeak-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installed Teamspeak"

discord-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installing Discord..."

#Discord:
#  chocolatey.installed:
#    - name: discord.install

discord-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt 
   - text: "- Installed Discord"

skype-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installing Skype..."

Skype:
  chocolatey.installed:
    - name: Skype

skype-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installed Skype"

shutup10-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installing Shutup10..."

Shutup10:
  chocolatey.installed:
    - name: shutup10

#TODO: Place portable version with configuration file instead of this
#
#shutup10-installed:
# file.append:
#   - name: C:\Users\TobyC\Desktop\managed.txt
#   - text: "- Installed Shutup10"

osu-installing:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installing Osu!..."

Osu!:
  chocolatey.installed:
    - name: osu

osu-installed:
 file.append:
   - name: C:\Users\TobyC\Desktop\managed.txt
   - text: "- Installed Osu!"

#TODO: Extract favorite OSU Maps from ZIP to correct directory
