C:\OOSU10:
 file.directory:
   - makedirs: True

C:\OOSU10\OOSU10.exe:
 file.managed:
   - source: salt://OOSU10/OOSU10.exe

C:\OOSU10\OOSU10-config.cfg:
 file.managed:
   - source: salt://OOSU10/oosu10-config.cfg

oosu10-job:
  schedule.present:
    - function: state.sls
    - job_args:
      - OOSU10-run
    - seconds: 360000
    - enabled: True
    - splay: 10

