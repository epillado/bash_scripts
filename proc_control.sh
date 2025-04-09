#! /usr/bin/bash

# Author: Eduardo Pillado.
# https://github.com/epillado
#
# # proc_control.sh : This is an example for job control in Bash. # #
# We want to launch 5 processes in paralell and count how
# many of them failed.
# BASH>= 4 required

# This function will be the launched process.
example_process() {
 EXPECTED_RETVAL=$1
 echo -e "\n$BASHPID Is running."
 if [ $EXPECTED_RETVAL == 0 ]; then
  sleep 5
 fi
 echo -e "\n$BASHPID finished with status $EXPECTED_RETVAL"
 exit $EXPECTED_RETVAL
}

launched(){
 id=$1 # Receives the process ID as first param.
 PROCESSES+=($id) # Add the process ID to an array.
 echo "$id launched."
}

FAILED=0 #Variable to store count of failed processes.
declare -a PROCESSES # Array for storing process IDs.

# Let's launch 5 processes in background and make one "fail".

example_process 0 &
launched $!

example_process 0 &
launched $!

example_process 1 & # This one will fail
launched $!

example_process 0 &
launched $!

example_process 0 &
launched $!

for p in ${PROCESSES[@]}; do
	wait $p || (( FAILED++ ))
done

echo -e "\nFailed processes: $FAILED "

