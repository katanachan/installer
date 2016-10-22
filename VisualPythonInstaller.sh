#!/bin/sh
#title       : vpythonlinuxinstall.sh
#description : A shell script to install VPython on Linux 
#author      : Aishwarya Unnikrishnan (github.com/katanachan)
#email id    : shwarya.unnikrishnan@gmail.com
#usage       : bash vpythonlinuxinstall.sh or ./vpythonlinuxinstall.sh
#=====================================================================   
sudo apt-get install libwxgtk3.0-dev
sudo apt-get install virtualenv swig build-essential python-dev 
cd ~/

#=== SHELL SCRIPT TO FETCH VIA APT-GET =====
OS_VERSION=`lsb_release --release | cut -f2`
if [ "$OS_VERSION" == "16.04" ] 
then
	echo "In Xenial"
else
	sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu xenial main restricted universe"
	echo "Adding Xenial to sources" 
fi
sudo apt-get update
sudo apt-get install python-wxgtk3.0 python wxgtk3.0-dev
if [ "$OS_VERSION" == "16.04" ] 
then
	echo "In Xenial"
else
	sudo add-apt-repository --remove "deb http://archive.ubuntu.com/ubuntu xenial main restricted universe"
	echo "Removing Xenial from sources" 
fi


#=== SHELL SCRIPT TO BUILD FROM SOURCE ON VIRTUAL ENVIRONMENT ===
# === Uncomment the lines below if the above does not work ==== 
# === You have two choices === Either (PLEASE LEAVE ONE OF THESE OPTION COMMENTED )
# ==== 1. Uncomment the lines beginning with ./configure and CFLAGS === 


#wget http://downloads.sourceforge.net/wxpython/wxPython-src-3.0.2.0.tar.bz2
#tar -xvjf wxPython-src-3.0.2.0.tar.bz2 
#source `which virtualenvwrapper.sh`
#mkvirtualenv workspace	
#cd wxPython-src-3.0.2.0/
#./configure --prefix=/home/$SUDO_USER/.virtualenvs/workspace/lib/ --with-gtk2 --enable-unicode --with-opengl --enable-stl ###Use this command if you wish to use setup.py 
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/$SUDO_USER/.virtualenvs/workspace/lib
#cd wxPython
#echo "export PYTHONPATH="$PWD"" >> ~/.bashrc
#CFLAGS=-Wno-error=format-security CPPFLAGS=-Wno-error=format-security sudo python setup.py install ###  Use this if you wish to use setup.py 
#python setup.py build
#deactivate


# ==== 2. Uncomment the lines beginning with sudo python2.7 build-wxpython.py  ===


#wget http://downloads.sourceforge.net/wxpython/wxPython-src-3.0.2.0.tar.bz2
#tar -xvjf wxPython-src-3.0.2.0.tar.bz2
#source `which virtualenvwrapper.sh`
#mkvirtualenv workspace	
#cd wxPython-src-3.0.2.0/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/$SUDO_USER/.virtualenvs/workspace/lib
#cd wxPython
#echo "export PYTHONPATH="$PWD"" >> ~/.bashrc
# sudo python2.7 build-wxpython.py --install --prefix=/home/$SUDO_USER/.virtualenvs/workspace/lib/ --reswig ###  Use this if you wish to use build-wxpython.py 
#deactivate
cd ~/


wget https://pypi.python.org/packages/dd/69/a6d5ba016f4e15a83e49471bcf91a7b8fbdf818e5acb002f554027d47650/TTFQuery-1.0.5.tar.gz
tar -xvzf TTFQuery-1.0.5.tar.gz
cd TTFQuery-1.0.5/
python setup.py build && sudo python setup.py install
cd ~/

sudo pip install fonttools
 
wget https://pypi.python.org/packages/73/9e/fe761e03de28b51b445ddf01ddae87441b7e7040df7d830b86db8f945808/Polygon2-2.0.8.tar.gz#md5=3349a6dfc4cda2a1bcc9bf6c9d411470
tar -xvzf Polygon2-2.0.8.tar.gz
cd Polygon2-2.0.8/
python setup.py build && sudo python setup.py install
cd ~/

sudo apt-get update
sudo apt-get install git
sudo apt-get install libgtk2.0-dev
sudo apt-get install libgtkglextmm-x11-1.2-dev
sudo apt-get install libgtkmm-2.4-dev
sudo apt-get install python-setuptools
sudo apt-get install python-numpy
sudo apt-get install libboost-python-dev
sudo apt-get install libboost-signals-dev
sudo apt-get install tk

wget http://sourceforge.net/projects/vpythonwx/files/6.11-release/vpython-wx-src.6.11.tgz
tar -xvzf vpython-wx-src.6.11.tgz
cd vpython-wx-src.6.11/
python setup.py build && sudo python setup.py install
