PHONY: remove

DIR=$(shell pwd)

install: /usr/bin/borg-backup ~/.config/systemd/user/borgbackup.service ~/.config/systemd/user/borgbackup.timer
	@echo "Installation successfull"

/usr/bin/borg-backup:
	@sudo ln -v -s $(DIR)/check_wifi_and_start.sh /usr/bin/borg-backup

~/BORG_PASSPHRASE:
	@ln -v -s $(DIR)/BORG_PASSPHRASE ~/BORG_PASSPHRASE

~/.config/systemd/user/borgbackup.service:
	@ln -v -s $(DIR)/borgbackup.service ~/.config/systemd/user/borgbackup.service

~/.config/systemd/user/borgbackup.timer:
	@ln -v -s $(DIR)/borgbackup.timer ~/.config/systemd/user/borgbackup.timer

remove:
	unlink ~/.config/systemd/user/borgbackup.service
	sudo unlink /usr/bin/borg-backup

