# linux setup script, adapted from Hackbright Academy
#
#
# This script is to be run either:
# - after installing a fresh Ubuntu installation on computer (as super user: $ sudo bash tdd-linux-setup.sh)
# - by Vagrant as the first step of provisioning when first running 'vagrant up'
#
# Only things specific for HB Linux installs (and things used for student Vagrant setup, etc) should be included

# Useing set -e will make the script exit if any line gives as non-zero return
set -e

# ensure that environment and Postgres default to UTF-8
echo "LANG=en_US.UTF-8" > /etc/default/locale
echo "LANGUAGE=en_US.UTF-8:" >> /etc/default/locale

#For Ubuntu 16.04, run this command to install the PPA
sudo add-apt-repository ppa:jonathonf/python-3.6

#update package listings
echo -e "\nUpdating package listings\n"
sudo apt-get update

sudo apt-get install -y python3.6

# Thanks to Ubuntu Handbook for these directions http://ubuntuhandbook.org/index.php/2017/07/install-python-3-6-1-in-ubuntu-16-04-lts/
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
# sudo update-alternatives --config python3

echo "*************************************"
echo "Installed Python 3.6"
echo "*************************************"

#install useful linux packages
echo -e "\nIstalling Linux packages\n"
sudo apt-get install -y git python3-dev python3-pip python3-venv sqlite3 libxml2-dev libxslt1-dev libffi-dev libssl-dev postgresql-client postgresql postgresql-contrib postgresql-plpython postgresql-server-dev-9.5 xvfb xserver-xephyr vnc4server
echo "*************************************"
echo "Installed Linux packages"
echo "*************************************"

# upgrade to most recent pip
echo -e "\nUpgrading pip\n"
sudo pip3 install -U pip

# install useful python packages
echo -e "\nInstalling Python packages\n"
sudo pip3 install psycopg2 ipython notebook

echo "*************************************"
echo "Installed Python packages"
echo "*************************************"

# echo -e "\nInstalling firefox"
sudo apt-get install -y firefox

echo "*************************************"
echo "Installed Firefox"
echo "*************************************"

# install geckodriver
echo -e "\nInstalling Geckodriver\n"
wget https://github.com/mozilla/geckodriver/releases/download/v0.19.0/geckodriver-v0.19.0-linux64.tar.gz
sudo sh -c 'tar -x geckodriver -zf geckodriver-v0.19.0-linux64.tar.gz -O > /usr/bin/geckodriver'
sudo chmod +x /usr/bin/geckodriver
rm geckodriver-v0.19.0-linux64.tar.gz

echo "*************************************"
echo "Installed Geckodriver"
echo "*************************************"


echo "*************************************"
echo "Setup complete. No errors encountered"
echo "*************************************"