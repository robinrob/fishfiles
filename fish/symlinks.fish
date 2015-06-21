#!/usr/bin/env fish

set FISHFILES_HOME ~/Programming/robin/fish/projects/dotfiles
OLD_DIR=/tmp/dotfiles

set_color green
echo "Sym-linking dotfiles ..."
set_color normal


cd $FISHFILES/config/dotfiles
set Dir (pwd)
set Files (ls . | xargs)
Files=(${(s: :)FILES})

set_color yellow
echo "\ySym-linking files to home directory ..."
for file in $Files
    set filepath $DIR/$file
    set_color cyan
    ln -s $filepath ~/.$file 2> /dev/null && echo "\t\t${ITEM}$filepath sym-linked to $HOME/$file"
end
set_color normal
