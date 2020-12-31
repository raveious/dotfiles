
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
       . /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

function reboot_to ()
{
	title=$(grep -i "$1" /boot/grub/grub.cfg | cut -d "'" -f 2 | head -n 1)
	sudo grub-reboot "$title" && sudo reboot
}

alias reboot-to-windows='reboot_to windows'
alias reboot-to-linux='reboot_to "Arch Linux"'

alias cd..='cd ..'
alias ls='ls --color=auto'
alias yeet='git push'
