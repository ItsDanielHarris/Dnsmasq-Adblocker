echo '' > /etc/dnsmasq.d/dnsmasq.adblocker.blacklist.yoyo.conf
echo '' > /etc/dnsmasq.d/dnsmasq.adblocker.blacklist.notracking.conf
echo '' > /etc/dnsmasq.d/dnsmasq.adblocker.blacklist.countries.conf
service dnsmasq restart
