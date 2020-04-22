url1="https://raw.githubusercontent.com/notracking/hosts-blocklists/master/domains.txt"
url2="https://raw.githubusercontent.com/notracking/hosts-blocklists/master/hostnames.txt"
url3="https://pgl.yoyo.org/adservers/serverlist.php?hostformat=dnsmasq&amp;showintro=0&amp;mimetype=plaintext"

source "/$USER/adblocker/validate.sh"
if [[ `validate_url $url1` ]]; then wget -qO- $url1 > "/$USER/adblocker/dnsmasq.adblocker.blacklist.domains.txt"; fi
if [[ `validate_url $url2` ]]; then wget -qO- $url2 > "/$USER/adblocker/dnsmasq.adblocker.blacklist.hostnames.txt"; fi
if [[ `validate_url $url3` ]]; then wget -qO- $url3 > "/$USER/adblocker/dnsmasq.adblocker.blacklist.yoyo.txt"; fi
