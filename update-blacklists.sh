#! /bin/sh

url1="https://raw.githubusercontent.com/notracking/hosts-blocklists/master/domains.txt"
url2="https://raw.githubusercontent.com/notracking/hosts-blocklists/master/hostnames.txt"
url3="https://pgl.yoyo.org/adservers/serverlist.php?hostformat=dnsmasq&amp;showintro=0&amp;mimetype=plaintext"

. /$USER/adblocker/validate.sh && (if [[ `validate_url $url1` = "yes" ]]; then wget -qO- $url1 > /$USER/adblocker/dnsmasq.adblocker.blacklist.domains.txt; else 0; fi)
. /$USER/adblocker/validate.sh && (if [[ `validate_url $url2` = "yes" ]]; then wget -qO- $url2 > /$USER/adblocker/dnsmasq.adblocker.blacklist.hostnames.txt; else 0; fi)
. /$USER/adblocker/validate.sh && (if [[ `validate_url $url3` = "yes" ]]; then wget -qO- $url3 > /$USER/adblocker/dnsmasq.adblocker.blacklist.yoyo.txt; else 0; fi)
