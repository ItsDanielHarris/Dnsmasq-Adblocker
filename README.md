# Dnsmasq Adblocker
Dnsmasq Adblocker is an automated tool that updates dnsmasq daily using remote blacklists of malicious domains and host names.

### Features
* Daily dnsmasq updates from remote blacklists
* Whitelist
* Country TLD blacklist

### Requirements
* Tested in and runs in Ubuntu 19.10 x64, Debian, and EdgeOS.

### Installation
**Installation script should be executed first in a development operating system/server before running on a production server. Run at your own risk**
> Installation file will change the port number in dnsmasq.conf to 5353 if already commented out. If the port number line is commented out and the port number is different than 5353, you will need to uncomment the line to run dnsmasq.                    

Run this line of code in Terminal/Console which will automatically set everything up for you.                    
```
apt-get install curl -y && source <(curl -s https://raw.githubusercontent.com/ItsDanielHarris/Dnsmasq-Adblocker/master/install.sh)
```

### Configuration
The config and blacklist/whitelist files are located in the `/$USER/adblocker` directory.

The scheduled update cron can be edited in `/etc/cron.daily/dnsmasq.adblocker.update`.

Dnsmasq blacklists/whitelists can be manually edited/deleted in the `/etc/dnsmasq.d` directory, but will be overwritten if the scheduled update cron still exists.
