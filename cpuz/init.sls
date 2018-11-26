cpuz:
  chocolatey.installed:
    - name: cpu-z.install

C:\Program Files\CPUID\CPU-Z\cpuz.ini:
 file.managed:
   - source: salt://cpuz/cpuz.ini
