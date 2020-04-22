ad_list_url="/$USER/adblocker/adblock-yoyo.txt"
pixelserv_ip="0.0.0.0"
ad_file="/etc/dnsmasq.d/dnsmasq.adblocker.blacklist.yoyo.conf"

cat $ad_list_url | sed -e 's/<[^>]*>//g' | sed "s/127\.0\.0\.1/$pixelserv_ip/" > $ad_file
