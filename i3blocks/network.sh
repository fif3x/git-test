#!/bin/bash
iface=$(ip route | awk '/default/ {print $5}')
ip=$(ip addr show $iface | awk '/inet / {print $2}' | cut -d/ -f1 | head -n1)

if [ -n "$ip" ]; then
    echo "E: <span foreground='#00ff55'>$ip</span>"
else
    echo "<span foreground='#ff5555'>No Connection</span>"
fi

