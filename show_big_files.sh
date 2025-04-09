#! /usr/bin/bash
# # show_big_files.sh : Example bash script that lists files larger that 1G in the user's home dir. # #
echo 'Listing files bigger than 1G in home dir.'
find ~ -size +1G -type f


