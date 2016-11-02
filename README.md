# docker-rstudio

Docker container for [RStudio Server 1.0.44][3] with [R 3.3.2][8]

"RStudio is an integrated development environment for R. It includes a console, syntax-highlighting editor that supports direct code execution, as well as tools for plotting, history, debugging and workspace management."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    $ docker run -d -p 8787:8787 quantumobject/docker-rstudio

This will create docker-rstudio container with login/password guest/guest.

To access it and configured the container :

    $ docker exec -it container-id /bin/bash

Them to change guest password :

    $ passwd guest
    $ exit

or you can remove guest user and create a new user:

    $ deluser guest
    $ adduser new_user
    $ exit
    
In the same way you can add additional users without deleting other users. 

## Accessing the RStudio Server applications:

After that check with your browser at addresses plus the port 8787:

  - **http://host_ip:8787/**

note : It was created by using quantumobject/docker-baseimage and installing the package R and RStudio Server from rstudio.com . RStudio is a trademark of RStudio, Inc.

## More Info

About RStudio Server[www.rstudio.com][1]

To help improve this container [docker-rstudio][5]

RStudio Server [Documentation][6]

Example of [RStudio Server][7]

For additional info about us and our projects check our site [www.quantumobject.org][9]

[1]:http://www.rstudio.com
[2]:https://www.docker.com
[3]:http://www.rstudio.com/products/rstudio/download-server
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-rstudio
[6]:https://support.rstudio.com/hc/en-us/categories/200035113-Documentation
[7]:https://rstudio.quantumobject.org
[8]:http://www.r-project.org
[9]:https://www.quantumobject.org
