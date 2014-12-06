rstudio container
=================

Dockerfile to be use to build image for docker container with docker-baseimage and RStudio

quantumobject/docker-rstudio
Short Description:
Rstudio server v0.98.1091
RStudio to work with R Statistical Computing.
R version 3.1.2


Full Description:
RStudio to work with R Statistical Computing

To make it work :

docker run -d -p 8787 quantumobject/docker-rstudio

web brownser to ip:port and login/password will be guest/guest


To configured it :

To access it and configured the container :

docker exec -it container-id /bin/bash

passwd guest ==> to change guest password or you can remove by :  deluser guest

adduser ????? ==> to add user to the RStudio server

exit


you can check [http://www.rstudio.com/ide/docs/server/getting_started](http://www.rstudio.com/ide/docs/server/getting_started) for more info about Rstudio

example : [http://www.quantumobject.com](http://www.quantumobject.com) ==> Container ==> Rstudio
