#!/bin/bash

set +e

export TOOLSDIR=/usr/local/shng
export ANSIBLE_LOG_PATH=$TOOLSDIR/ansible.log
sudo chmod 666 $ANSIBLE_LOG_PATH
export ANSIBLE_DATA=$PWD

ansible-playbook 00_update_system.yml
ansible-playbook 01_config_system.yml
ansible-playbook 02_python_installs.yml
ansible-playbook 03_apache_install.yml
#ansible-playbook 04_nginx_install.yml

#ansible-playbook 05_php_install.yml    # is done by smartVISU install

ansible-playbook 11_raspberrypi_installs.yml

if [ -f "${TOOLSDIR}/dev-sh" ]; then
    ansible-playbook 21_smarthome_install.yml --extra-vars "branch=develop"
else
    ansible-playbook 21_smarthome_install.yml
fi

ansible-playbook 30_knxd_install.yml
#ansible-playbook 30_eibd_install.yml
ansible-playbook 31_mqtt_install.yml
ansible-playbook 32_1wire_install.yml

if [ -f "${TOOLSDIR}/dev-sv" ]; then
    ansible-playbook 40_smartvisu_install.yml --extra-vars "branch=develop"
else
    ansible-playbook 40_smartvisu_install.yml
fi
ansible-playbook 41_smartvisu28_install.yml


ansible-playbook 22_smarthome_start.yml



#ansible-playbook 01_Tweaks.yml
#ansible-playbook 02_Python_Packages.yml
#ansible-playbook 03_knxd.yml
#ansible-playbook 04_nginx.yml
#ansible-playbook 05_Smartvisu.yml
#ansible-playbook 06_Smarthome.yml
#ansible-playbook 07_NFS.yml
#ansible-playbook 08_Samba.yml
#ansible-playbook 09_OneWire.yml
#ansible-playbook 10_lirc.yml
#ansible-playbook 11_exim4.yml
#ansible-playbook 12_logcheck.yml
#ansible-playbook 13_monit.yml
#ansible-playbook 14_squeezelite.yml
#ansible-playbook 15_openvpn.yml
#ansible-playbook 16_freeradius.yml
#ansible-playbook 17_watchdog.yml
#ansible-playbook 18_SQL.yml
#ansible-playbook 19_mariadb_backup.yml
#ansible-playbook 20_mosquitto.yml
#ansible-playbook 21_ansible.yml
#ansible-playbook 22_setups.yml
#ansible-playbook 23_fail2ban.yml
#ansible-playbook 24_nodered.yml
