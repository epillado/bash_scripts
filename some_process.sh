#! /usr/bin/bash
# Author: Eduardo Pillado.
# https://github.com/epillado
# This script is part of an example and is supossed to be called
# from process_control.sh

EXPECTED_RETVAL=$1
echo -e "\n $$ Is running."
if [ $EXPECTED_RETVAL == 0 ]; then
 sleep 5
fi
echo -e "\n $$ finished with status $EXPECTED_RETVAL"
exit $EXPECTED_RETVAL 
