#!/bin/bash
printf '%*s\n' 40 '' | tr ' ' '_'
# Sysinfo header
figlet "System"

echo "DATE UTC:         $(date -u)"
echo "HOSTNAME:         $(hostname)"
echo "UPTIME:           $(uptime -p | sed 's/up //')"
echo "USER:             $(whoami)"

figlet "MEMORY"

free -h
echo ""
figlet "DISK"

df -h | head -2
printf '%*s\n' 40 '' | tr ' ' '_'
