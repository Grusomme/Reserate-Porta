# Canalis

Web application for sending control messages to a background server

<h2>Vesions used</h2>
Django 1.11
Django REST framework 3.6.2

<h2>Prerequisite</h2>
VirtualBox and Vagrant installed

<h2>Conect and start server</h2>
<b>vagrant up</b> - starts the virtual machine<br>
<b>vagrant ssh</b> - SSH into the virtual machine<br>
<b>runserver</b> - start Django development server

<h2>For shuting down</h2>
<b>exit</b><br>
<b>vagrant suspend</b>
<br>
<br>
I used Vagrant and VirtualBox to create a virtual machine with Xenial64 that runs
the web server.

Vagrant mirror the project files on your local machine to the virtual machine, so any
changes made to your local files will also happen instantly on the vm, no reboot required.

OBS! Multiple vagrant instances can't run simultaneously because they all wil try to use port 2222 for SSH
