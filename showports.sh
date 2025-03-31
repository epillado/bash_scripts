#!/usr/bin/bash
# Show ports using netsat or ss or lsof.
 sudo netstat -tunlp 2>/dev/null \
	 || sudo ss -tunlp 2>/dev/null \
	 || sudo lsof -nP -iTCP -sTCP:LISTEN 2>/dev/null \
	 || echo 'No way to list ports could be found.'

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
