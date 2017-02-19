install:
	ln -s $PWD/borg-backup /usr/bin/borg-backup
	ln -s $PWD/BORG_PASSPHRASE /usr/bin/BORG_PASSPHRASE
	ln -s borgbackup.service ~/.config/systemd/user/borgbackup.service
