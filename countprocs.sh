#! /usr/bin/bash
# Group and count similar processes
ps -eo comm | sort |uniq -c | sort -g
