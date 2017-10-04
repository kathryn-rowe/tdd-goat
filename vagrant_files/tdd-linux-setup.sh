# linux setup script, adapted from Hackbright Academy
#
#
# This script is to be run either:
# - after installing a fresh Ubuntu installation on lab computers (as super user: $ sudo bash hb-linux-setup.sh)
# - by Vagrant as the first step of provisioning when first running 'vagrant up'
#
# Only things specific for HB Linux installs (and things used for student Vagrant setup, etc) should be included

# Useing set -e will make the script exit if any line gives as non-zero return
set -e

# ensure that environment and Postgres default to UTF-8
echo "LANG=en_US.UTF-8" > /etc/default/locale
echo "LANGUAGE=en_US.UTF-8:" >> /etc/default/locale

#update package listings
echo -e "\nUpdating package listings\n"
sudo apt-get update

# echo -e "\nInstalling firefox"
sudo apt-get install -y firefox

#install useful linux packages
echo -e "\nIstalling Linux packages\n"

sudo apt-get install -y git python3-dev python3-pip python3-venv sqlite3 libxml2-dev libxslt1-dev libffi-dev libssl-dev postgresql-client postgresql postgresql-contrib postgresql-plpython postgresql-server-dev-9.5 xvfb xserver-xephyr vnc4server

# upgrade to most recent pip
echo -e "\nUpgrading pip\n"
sudo pip install -U pip

# install useful python packages
echo -e "\nInstalling Python packages\n"
sudo pip install psycopg2 ipython notebook

# install geckodriver
echo -e "\nInstalling Python packages\n"
wget https://github.com/mozilla/geckodriver/releases/download/v0.19.0/geckodriver-v0.19.0-linux64.tar.gz
sudo sh -c 'tar -x geckodriver -zf geckodriver-v0.19.0-linux64.tar.gz -O > /usr/bin/geckodriver'
sudo chmod +x /usr/bin/geckodriver
rm geckodriver-v0.19.0-linux64.tar.gz


echo "*************************************"
echo "Setup complete. No errors encountered"
echo "*************************************"