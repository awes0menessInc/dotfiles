#!/bin/bash


# In case the directory is not the shell file directory
cd `dirname $0` 

mkdir $HOME/old_dotfiles # Backup directory to prevent blunders
cp -r $HOME/.[^.]* $HOME/old_dotfiles

cp -af . $HOME # Copy dotfiles

# Copies preferences if OS is MacOS
if [[ "$OSTYPE" == "darwin"* ]]; then
		mkdir $HOME/old_preferences # Backup for Blunders
		cp -r /Users/$USER/Library/Preferences $HOME/old_preferences
		cp -rf user_preferences/* /Users/$USER/Library/Preferences # Copy all my MacOS and app preferences
fi

# Get rid of evidence
rm -r user_preferences
rm Screenshot.png
rm README.md

# Asking for sudo permission
#[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

# Black magic on part of homebrew. Bundle automatically identifies the Brewfile
# Then proceeds to install all the packages.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle 
brew cleanup
brew prune

rm Brewfile
clear

echo "ALL DONE!"

/bin/rm -f "${0}"
