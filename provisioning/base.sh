# Main provisioning script. Updates Python 3, installs pip, and git.
# git is used to clone the Anaconda server.
apt-get -y upgrade python3
apt-get -y install python3-pip git