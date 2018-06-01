#!/bin/bash
TIME=`date +%b-%d-%y`
FILENAME=backup-$TIME.tar.gz
SRCDIR=/home/homeassistant/.homeassistant/*.yaml
DESDIR=/home/pi
sudo tar -cpzf $DESDIR/$FILENAME $SRCDIR
echo $FILENAME
ftp-upload -h 192.168.1.1 -u <FTPUSERNAME> --password <FTPPASSWORD> $DESDIR/$FILENAME
rm -f $DESDIR/$FILENAME
#END#!/bin/bash
