#!/bin/sh

exec chpst -u rstudio-server svlogd -tt /var/log/rserver/
