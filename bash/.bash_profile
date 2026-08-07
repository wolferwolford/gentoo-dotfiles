# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

eval "$(keychain --eval id_ed25519_gentoo)"
source /home/wolfer/.config/broot/launcher/bash/br
