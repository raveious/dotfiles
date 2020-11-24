#!/bin/sh

for backup in .bashrc .bash_profile .bash_logout
do
	if [ -f $HOME/$backup ]
	then
		mv $HOME/$backup $HOME/$backup.old
	fi

	ln -sf $repo_dir/$dir/$backup $HOME/$backup
done

