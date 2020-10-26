#!/bin/sh
#!/bin/bash

set -e

main () {
	local readonly SSID=$(iw dev | grep ssid | awk '{print $2}')
	local readonly TARGET_SSID="*******"

	echo $SSID
	echo $TARGET_SSID

	if [ $SSID == $TARGET_SSID ]; then
    	echo "Both Strings are Equal."
	else
	    echo "Both Strings are not Equal."
	    exit 1
	fi
}

main