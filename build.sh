#!/bin/bash
curl https://raw.githubusercontent.com/goagent/goagent/3.0/local/proxy.ini |\
grep -E -e 'blacklist' | grep -E -o '([0-9]+\.){3}[0-9]+' |\
awk -F. '{printf("0x%02x%02x%02x%02x,",$1,$2,$3,$4);if(NR%10==0)printf "\n";}' |\
sed -r -e 's/^/iptables -t mangle -I PREROUTING -p udp --sport 53 -m u32 --u32 "0\&0x0F000000=0x05000000 \&\& 22\&0xFFFF@16=/' \
 -e 's/,$/" -j DROP/' > body
cat head > gfwfinal
printf "\n" >> gfwfinal
cat body >> gfwfinal
cat gfwfinal > gfwiptables
cat gfwfinal > gfwiptables2
