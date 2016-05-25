#!/bin/bash

# requires zenity, imagemagick, qrencode

str=`zenity --entry --title="QR encoder"` ;

if [ -n "$str" ] ; then
	qrencode -o .easyqr.temp.png "$str" ;
	convert .easyqr.temp.png -scale 200% .easyqr.temp.png ;
	display .easyqr.temp.png ;
	rm .easyqr.temp.png ;
fi ;
exit
