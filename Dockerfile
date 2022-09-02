# We are going to use the Latest version of Centos
FROM  centos:latest
# Installing the sources for the locales
RUN  yum install -y glibc-locale-source
# Setting up the default locale to en_US.UTF-8
RUN  localedef --no-archive -i en_US -f UTF-8 en_US.UTF-8 && \
     export LANG=en_US.UTF-8
# Installing Necessary packages including firefox
RUN  yum install -y dbus-x11 PackageKit-gtk3-module libcanberra-gtk2 firefox
# Generating a universally unique ID for the Container
RUN  dbus-uuidgen > /etc/machine-id
# Starting Firefox application
CMD  /usr/bin/firefox