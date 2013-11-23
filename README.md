rstudio
=======

Dockerfile to be use to build image for docker container with ubuntu 13.10 plus sshd service and RStudio

angelrr7702/rstudio
Short Description:
Rstudio server v0.97.551.
RStudio to work with R Statistical Computing.
R version 3.0.2


Full Description:
RStudio to work with R Statistical Computing

To make it work :

docker run -d -p 22 -p 8787 angelrr7702/rstudio

web brownser to ip:port and login/password will be guest/guest


To configured it :

and need to log in to the container by ssh (root:rootprovisional) and them :

passwd ????? ==> to change root password

passwd guest ==> to change guest password or you can remove by :  deluser guest

adduser ????? ==> to add user to the RStudio server

exit


you can check http://www.rstudio.com/ide/docs/server/getting_started for more info about Rstudio



example : rstudio.quantumobject.com login: guest password: guest

note : it was created by using angelrr7702/ubuntu-13.10-sshd and installing the package R and Rstudio server from rstudio.com
