#!/bin/bash
mem_used=$(free -h | awk '/Mem:/ {print $3}')
mem_avail=$(free -h | awk '/Mem:/ {print $7}')
mem_total=$(free -h | awk '/Mem:/ {print $2}')

echo -e "Memory: <span foreground='#00aaff'>$mem_used</span> used, \
<span foreground='#00ff55'>$mem_avail</span> free / $mem_total"
