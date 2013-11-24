# rstudio container
# VERSION               0.0.2

FROM angelrr7702/ubuntu-13.10-sshd

MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"

# adding nessesary reporsitory
RUN echo "deb http://archive.ubuntu.com/ubuntu saucy-backports main restricted universe" >> /etc/apt/sources.list
RUN echo "deb http://cran.mtu.edu/bin/linux/ubuntu saucy/" >> /etc/apt/sources.list
RUN DEBIAN_FRONTEND=noninteractive

# adding key for cran repository
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

# updating & upgrade 
RUN apt-get update
RUN apt-get upgrade -y -q
RUN apt-get dist-upgrade -y -q

# Installing R and some other package
RUN apt-get install -y -q r-base r-base-dev gdebi-core libapparmor1 supervisor

# Installing RStudio
RUN wget http://download2.rstudio.org/rstudio-server-0.97.551-amd64.deb
RUN gdebi -n rstudio-server-0.97.551-amd64.deb
RUN rm /rstudio-server-0.97.551-amd64.deb

# add regular linux user to add user to RStudio 
RUN adduser --disabled-password --gecos "" guest
RUN echo "guest:guest"|chpasswd


# supervisor configuration
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# Hack for initctl
# See: https://github.com/dotcloud/docker/issues/1024
#RUN dpkg-divert --local --rename --add /sbin/initctl
#RUN ln -s /bin/true /sbin/initctl

# for sshd and for Rstudio access ..
EXPOSE 8787 22

#run supervisord
CMD ["/usr/bin/supervisord"] 
