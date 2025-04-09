#! /usr/bin/bash
if [ $# -eq 0 ]
then
    echo "Provide a file name as an argument. Any lines that are a palindrome will be printed out."
    exit -1
fi
WORDLIST=$1
if [ -f $WORDLIST ]
then
    rev $WORDLIST > $WORDLIST.rev
    echo This lines in $WORDLIST are palindromes:
    comm -1 -2 <(sort $WORDLIST) <(sort $WORDLIST.rev)
else
    echo "Not able to find $WORDLIST."
fi
