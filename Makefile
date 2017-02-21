install: /usr/bin/borg-backup ~/BORG_PASSPHRASE ~/.config/systemd/user/borgbackup.service
	@echo "Installation successfull"

/usr/bin/borg-backup:
	ln -s $PWD/borg-backup /usr/bin/borg-backup

~/BORG_PASSPHRASE:
	ln -s $PWD/BORG_PASSPHRASE ~/BORG_PASSPHRASE

~/.config/systemd/user/borgbackup.service:
	ln -s $PWD/borgbackup.service ~/.config/systemd/user/borgbackup.service


