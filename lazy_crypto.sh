#!/bin/bash
###################################################
# Lazy Crypto
# Written By: Captain Bossman
# 
# Eases the pain of encrypting and decrypting 
# individual files using OpenSSL.  
#
# Please do not be alarmed that this is a quick and
# dirty hack.  Feel free to use this for anything
# if you happen to find it useful. 
# 
# Please direct any support requests to 
# http://www.google.com
####################################################
set -u
set -e
# set -x  # Un-comment to show debug output - SHOWS PASSWORD ON SCREEN

# Encryption algorhythm to use. 
# Check 'openssl enc help' for options. 
 
algo="aes-256-cbc" 
 
# Panic if we don't have the right number of 
# arguments 
set +u
if [ "$2" == "" ]; then 
    echo "Usage: $0 [ encrypt|decrypt ] filename"
    exit 2 
else
    set -u
    echo -n "Passphrase: " 
    stty -echo   
    read passwd
    stty echo
    echo
 
    case "$1" in 
        encrypt)
            openssl enc -$algo -e -in $2 -out $2.enc -pass pass:"${passwd}"; 
        ;;
        decrypt)
            openssl enc -$algo -d -in $2 -out `echo $2 | sed -e 's/\.enc//'` -pass pass:"${passwd}";
        ;;

        *)
            echo "Usage: $0 [ encrypt|decrypt ] filename";
        ;;
    esac
fi
