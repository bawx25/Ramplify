echo "Installing ap"
apt-get install hostapd wpasupplicant dnsmasq
update-rc.d -f hostapd remove
update-rc.d -f dnsmasq remove
cat ./templates/interface.template >> ~/etc/network/interfaces

raspi-config nonint do_boot_wait 0

