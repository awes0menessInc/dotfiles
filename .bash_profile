#To Set Personal Welcome Login Message
#Setting an alias to use an updated version of vim using MacVim.app
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
# Load the shell dotfiles, and then some:
for file in ~/.{bash_prompt,aliases,exports,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file
# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;
# Save multi-line commands as one command
shopt -s cmdhist
# Append to the Bash history file, rather than overwriting it
shopt -s histappend;
# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
shopt -s autocd;
# * Recursive globbing, e.g. `echo **/*.txt`
shopt -s globstar 2> /dev/null
# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

#sourcing z
zpath="$(brew --prefix)/etc/profile.d/z.sh"
[ -s $zpath ] && source $zpath

# Explicitly sourcing .bashrc file(Generally not sourced in MAC OSX)
if [ -s ~/.bashrc ]; then
	source ~/.bashrc; 
fi

# homebrew completion
if  which brew > /dev/null; then
    source "$(brew --prefix)/etc/bash_completion.d/brew"
fi;

# hub completion
if  which hub > /dev/null; then
    source "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh";
fi;

# In MacOS X, /etc/bashrc is apparently not sourced at all. In this case, puting the bash_completion file in /sw/etc and adding the following code to ~/.bash_profile

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
export HISTTIMEFORMAT='%F %T '
# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space
export HISTCONTROL="erasedups:ignoreboth"       # no duplicate entries
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
type shopt &> /dev/null && shopt -s histappend  # append to history, don't overwrite it

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;


##
# Your previous /Users/Shivam/.bash_profile file was backed up as /Users/Shivam/.bash_profile.macports-saved_2016-07-21_at_00:21:06
##

# MacPorts Installer addition on 2016-07-21_at_00:21:06: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# For CUDA Toolkit
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"
