#!/bin/bash

set -e

if [ -f /etc/configured ]; then
  echo 'already configured'
else
  #code that need to run only one time ....
  #needed for fix problem with ubuntu and cron
  #ln -s /etc/apparmor.d/rstudio-server /etc/apparmor.d/disable/
  update-locale
  date > /etc/configured
fi
