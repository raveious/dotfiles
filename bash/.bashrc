
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
       . /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

function reboot_to_windows ()
{
	windows_title=$(grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2)
	sudo grub-reboot "$windows_title" && sudo reboot
}

alias reboot-to-windows='reboot_to_windows'

