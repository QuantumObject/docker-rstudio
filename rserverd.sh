
#!/bin/sh
### In rserverd.sh (make sure this file is chmod +x):
# `/sbin/setuser xxxx` runs the given command as the user `xxxx`.
# If you omit that part, the command will be run as root.
exec /usr/lib/rstudio-server/bin/rserver >>/var/log/mysqld.log 2>&1
