# Canalis

Web application for sending control messages to a background server

<h2>Vesions used</h2>
Django 1.11
Django REST framework 3.6.2

<h2>Prerequisite</h2>
VirtualBox and Vagrant installed

<h2>First Time Starting up</h2>
Comands you need to run are in <b>bold</b><br>
<b>vagrant up</b> - starts the virtual machine<br>
<b>vagrant ssh</b> - SSH into the virtual machine<br>
<b>mkvirtualenv canalis --python=python3</b> - creates a virtual enviorment on the virtual machine<br>
<b>pip install django==1.11</b><br>
<b>pip install djangorestframework=3.6.2</b><br>
<b>echo "cd /vagrant/src/canalis_project" >> ~/.bashrc</b> - places you in the correct folder when you conect via SSH<br>
<b>exit</b> - leave the virtual machine 

<h2>Conect and start server</h2>
<b>vagrant up</b> - starts the virtual machine<br>
<b>vagrant ssh</b> - SSH into the virtual machine<br>
<b>workon Canalis</b> - select the vitual enviorment<br>
<b>python manage.py runserver 127.0.0.1:1234</b> - start Django development server

<h2>For shuting down</h2>
<b>exit</b><br>
<b>vagrant suspend</b>

I used Vagrant and VirtualBox to create a virtual machine with Xenial64 that runs
the web server.

Vagrant mirror the project files on your local machine to the virtual machine, so any
changes made to your local files will also happen instantly on the vm, no reboot required.

OBS! Multiple vagrant instances can't run simultaneously because they all wil try to use port 2222 for SSH