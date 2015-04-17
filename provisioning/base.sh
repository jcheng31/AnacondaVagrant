# Main provisioning. Installs git, which is used to clone the Anaconda server.
apt-get update
apt-get -y install git

# Anaconda set-up.
git clone https://github.com/DamnWidget/anaconda /opt/anaconda
cd /opt/anaconda
git checkout vagrant_server

rm /opt/anaconda/config.py
cp /vagrant/provisioning/anaconda_config.py /opt/anaconda/config.py

# OPTIONAL: Install pip, and dependencies from requirements.txt
# Uncomment as desired.

# - Python 2
# apt-get -y install python-pip
# pip install -r /vagrant/requirements.txt

# - Python 3
# apt-get -y install python3-pip
# pip3 install -r /vagrant/requirements.txt