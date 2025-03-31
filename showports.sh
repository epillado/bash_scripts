#!/usr/bin/bash
# Show ports using netsat as first option or lsof if netstat is not found.:wq
if which netstat
then
 sudo netstat -tunlp
elif which ss
then
 sudo ss -tunlp
elif which lsof
then
 sudo lsof -nP -iTCP -sTCP:LISTEN
fi

# For lsof:
# -n - Do not convert port numbers to port names.
# -p - Do not resolve hostnames, show numerical addresses.
# -iTCP -sTCP:LISTEN - Show only network files with TCP state LISTEN.

# For netsat:
# -t - Show TCP ports.
# -u - Show UDP ports.
# -n - Show numerical addresses instead of resolving hosts.
# -l - Show only listening ports.
# -p - Show the PID and name of the listener’s process. This information is shown only if you run the command as root or sudo user.

# use SUDO to show full results.
