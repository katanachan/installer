# installer notes: Please read before using
<br> Run the following as superuser.
<br> USAGE: $su 
<br> bash VisualPythonInstaller.sh  
For future reference during installations ; currently only Visual Python <br> 
Open the file in your favourite editor and check the three ways in which wxPython can be installed:<br>
APT-GET IS ENABLED BY DEFAULT <br> 
1. Via apt-get, this works on Xenial and Utopic, did not work for me when I was using Trusty <br>
2. Building from source will involve either using build_wxpython.py or setup.py like in older versions <br>
You may test and uncomment the version that works for you. Both work for me. Feel free to ask doubts if you wish.<br>

Then:<br>
Polygon, TTFQuery, fonttools are built from source. <br>
EDIT: fonttools can be installed as a wheel file now. So I replaced it with pip.<br>
tk, libgtk and boost-python are some other dependencies. <br>
<br><br>
You can open the VPython IDE by using the following command:
python2.7 /usr/local/lib/python2.7/dist-packages/VPython-6.11-py2.7-linux-x86_64.egg/vidle/idle.py.
