ad_list_url=/$USER/adblocker/whitelist.txt
pixelserv_ip="8.8.8.8"
ad_file="/etc/dnsmasq.d/dnsmasq.adblocker.whitelist.conf"

echo '' > $ad_file
while read line; do
	echo "server=/"$line"/"$pixelserv_ip >> $ad_file
	done < $ad_list_url
