#!/bin/sh

# Check OpenVPN Process
# Start OpenVPN if not running

if [ `/usr/bin/pgrep openvpn` ]; then
  /usr/bin/logger "OpenVPN is running..."
else
  /usr/bin/logger "OpenVPN not running, starting..."
  /usr/bin/sudo /etc/init.d/openvpn start
fi
