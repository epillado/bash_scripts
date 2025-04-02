#! /usr/bin/bash

# Author: Eduardo Pillado.
# https://github.com/epillado
#
# This is an example for job control in Bash.
# We want to launch 5 processes in paralell and count how
# many of them failed.

FAILED=0 #Variable to store count of failed processes.
declare -a PROCESSES

# Let's launch 5 processes in background and make one "fail".
./some_process.sh 0 &
PROCESSES+=($!)
./some_process.sh 0 &
PROCESSES+=($!)
./some_process.sh 1 &
PROCESSES+=($!)
./some_process.sh 0 &
PROCESSES+=($!)
./some_process.sh 0 &
PROCESSES+=($!)

for p in ${PROCESSES[@]}; do
	wait $p || (( FAILED++ ))
done

echo -e "\n Failed processes: $FAILED "


