#!/bin/sh

bash /$USER/adblocker/update-blacklists.sh && sh /$USER/adblocker/update-blacklist-yoyo.sh && sh /$USER/adblocker/update-blacklist-notracking.sh && sh /$USER/adblocker/update-blacklist-countries.sh && sh /$USER/adblocker/update-whitelist.sh && service dnsmasq restart
