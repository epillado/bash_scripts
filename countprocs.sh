#! /usr/bin/bash
# Author: Eduardo Pillado.
# https://github.com/epillado
# This is an example Bash script that groups and counts similar processes.

ps -eo comm | sort |uniq -c | sort -g
