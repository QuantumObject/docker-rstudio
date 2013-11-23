rstudio
=======

Dockerfile to be use to build image for docker container with ubuntu 13.10 plus sshd service and RStudio

angelrr7702/rstudio
Short Description
Rstudio server v0.97.551
RStudio to work with R Statistical Computing
R version 3.0.2

Full Description
RStudio to work with R Statistical Computing

To make it work :

docker run -d -p 22 -p 8787 angelrr7702/rstudio

and need to log in to the container by ssh (root:rootprovisional) and them :

passwd ????? ==> to change root password
passwd guest ==> to change guest password or you can remove by :  deluser guest

adduser ????? ==> to add user to the RStudio server

exit

example : www.quantumobject.com:49176 login: guest password: guest

note : it was created by using angelrr7702/ubuntu-13.10-sshd and installing the package R and Rstudio server from rstudio.com
