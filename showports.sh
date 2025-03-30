#!/usr/bin/bash
# Using netstat to show open ports.
# -t - Show TCP ports.
# -u - Show UDP ports.
# -n - Show numerical addresses instead of resolving hosts.
# -l - Show only listening ports.
# -p - Show the PID and name of the listener’s process. This information is shown only if you run the command as root or sudo user.
netstat -tunlp
