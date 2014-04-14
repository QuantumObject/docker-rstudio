# rstudio container
# VERSION               0.1.0
FROM angelrr7702/ubuntu-13.10-sshd
MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"
RUN echo "deb http://archive.ubuntu.com/ubuntu saucy-backports main restricted universe" >> /etc/apt/sources.list
RUN (echo "deb http://cran.mtu.edu/bin/linux/ubuntu saucy/" >> /etc/apt/sources.list && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9)
RUN (DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -q && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y -q )
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q r-base r-base-dev gdebi-core libapparmor1 supervisor sudo libcurl4-openssl-dev
RUN (wget http://download2.rstudio.org/rstudio-server-0.98.501-amd64.deb && gdebi -n rstudio-server-0.98.501-amd64.deb)
RUN rm /rstudio-server-0.98.501-amd64.deb
RUN (adduser --disabled-password --gecos "" guest && echo "guest:guest"|chpasswd)
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 8787 22
CMD ["/usr/bin/supervisord"] 
