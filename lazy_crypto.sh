#!/bin/bash
####################################################
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
 
# Encryption algorhythm to use. 
# Check 'openssl enc help' for options. 
 
algo="aes-256-cbc" 
 
# Panic if we don't have the right number of 
# arguments 
if [ "$2" == "" ]; then 
&#9;
&#9;    echo "Usage: $0 [ encrypt|decrypt ] filename"
&#9;    exit 2 
else
  
    &#9;    echo -n "Passphrase: " 
&#9;    stty -echo   
&#9;    read passwd
&#9;    stty echo
&#9;    echo
 
case "$1" in 
&#9;encrypt)
&#9;    openssl enc -$algo -e -in $2 -out $2.enc -pass pass:$passwd; 
&#9;;;
&#9;decrypt)
&#9;    openssl enc -$algo -d -in $2 -out `echo $2 | sed -e 's/\.enc//'` -pass pass:$passwd;
&#9;;;
 
&#9;*)
&#9;    echo "Usage: $0 [ encrypt|decrypt ] filename";
&#9;;;
esac
fi
