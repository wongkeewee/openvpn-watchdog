# OpenVPN Watchdog Script

This bash scripts monitors the OpenVPN Server Daemon process on Raspberry Pi and starts the daemon if it is not running.

My Raspberry Pi is assigned with a static DHCP IP Address and during startup, the IP Address might not be ready before the OpenVPN Server starts.
This script monitors the state of the OpenVPN Server Daemon and starts the daemon if it has not started.

This script is useful when managing the RPi remotely.

## Prerequisites

OpenVPN Server must be installed and running as a sysinit service.

## Configuring

Just plug and play, no configuration required.

## Deployment

After deploying the script, change the permission of the script to allow execution and define a cron job to periodically run the script.


```
$ chmod +x /path/to/openvpn-watchdog.sh

$ crontab -e
*/30 * * * * /path/to/openvpn-watchdog.sh
```

