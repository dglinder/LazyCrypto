# LazyCrypto
Use openssl to encrypt/decrypt files for quick seceurity needs

# Background
This was originally found on this site:
    https://www.dslreports.com/shownews/Encrypt-files-quickly-with-OpenSSL-87586

The code as downloaded January, 2019 contained this note:
```
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
```

Since this is not my original work, I am placing it here as a public service along with the updates I've made.

# Changes
2019-January
 * Added bash "-u" and "-e" settings to exit the script on un-initialized variable use, or on any error event within the script.  
 * Also added quotation marks (") around the ``passwd`` variable so spaces and other potentially confusing text is usable.
 * Enclose the ``passwd`` variable in bash variable markings ("${..}"): ``${passwd}``
 
 
