#!/bin/bash

# Check if .vimrc file exists in the home directory
if [ -e ~/.vimrc ]; then
    # Change the name of .vimrc file to .bup_vimrc
    mv ~/.vimrc ~/.bup_vimrc
    
    # Append a message to linuxsetup.log
    echo "The current .vimrc file was changed to '.bup_vimrc'" >> ~/linuxsetup.log
fi


# remove the line "..." in .bashrc in ~
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# remove .TRASH from ~
rm -rf ~/.TRASH
