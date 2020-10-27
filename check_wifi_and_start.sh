#!/bin/sh
#!/bin/bash

set -e

main () {
	local readonly SSID=$(iw dev | grep ssid | awk '{print $2}' | sha256sum | awk '{print $1}' )
	local readonly TARGET_SSID="e5a814ffa839fc84fb30bd27175968a484ad8b94d4970dd6d45694bd871392f2"

	if [ $SSID == $TARGET_SSID ]; then
		echo "Correct network"
    	/usr/bin/borgmatic --files -c /home/faebser/workspace/borg-backup-scripts/borgmatic.yaml
	else
	    echo "Wrong network"
	    exit 1
	fi
}

main