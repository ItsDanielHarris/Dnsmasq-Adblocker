ad_list_url="/$USER/adblocker/dnsmasq.adblocker.blacklist.domains.txt"
ad_list_url2="/$USER/adblocker/dnsmasq.adblocker.blacklist.hostnames.txt"
pixelserv_ip="0.0.0.0"
ad_file="/etc/dnsmasq.d/dnsmasq.adblocker.blacklist.notracking.conf"

cat $ad_list_url | sed -e 's/<[^>]*>//g' | sed "s/127\.0\.0\.1/$pixelserv_ip/" > $ad_file
echo "addn-hosts="$ad_list_url2 >> $ad_file;
