#!/bin/bash


# In case the directory is not the shell file directory
cd `dirname $0` 

mkdir $HOME/old_dotfiles # Backup directory to prevent blunders
mv $HOME/.* $HOME/old_dotfiles

cp -ai . $HOME # Copy dotfiles

# Copies preferences if OS is MacOS
if [[ "$OSTYPE" == "darwin"* ]]; then
		mkdir $HOME/old_preferences # Backup for Blunders
		cp -r /Users/$USER/Library/Preferences $HOME/old_preferences
		mv -r user_preferences/* /Users/$USER/Library/Preferences # Copy all my MacOS and app preferences
fi

# Get rid of evidence
rm -ir user_preferences
rm Brewfile
rm Screenshot.png

# Asking for sudo permission
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

# Black magic on part of homebrew. Bundle automatically identifies the Brewfile
# Then proceeds to install all the packages.

brew bundle 
brew cleanup
brew prune

clear

echo "ALL DONE!"

/bin/rm -f "${0}"
