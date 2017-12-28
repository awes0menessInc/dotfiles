# shiv's dotfiles
================

**~ is where the :heart: is...** Then these files tell you exactly how I live. Peek away... 

![Screenshot of my shell prompt](https://github.com/awes0menessInc/dotfiles/blob/master/Screenshot.png)

## Warnings

These are my own dotfiles. You are free to use and modify them, however, do go through the files before running the script. 
Some of the settings might still be hardcoded to my machine. I'll try to make it more modular and independent soon.

## Installation

### **Read the bootstrap script before installing.**  

You need to give it superuser permissions to run all scripts. The installation may take some time depending on your internet connection. 
So maybe grab a coffee or watch something while you are at it. You can use this one-liner to get started

    git clone https://github.com/awes0menessInc/dotfiles.git && cd dotfiles && sh bootstrap.sh

The installation also sets aside any previous dotfiles or OSX defaults you had before in folders ```old_dotfiles``` and ```old_preferences``` so you
can restore your system incase you break anything.

## About MacOS defaults

Sensible MacOS defaults are wonderful. I can't count the hours I would have wasted to get same exact setting on my new MacBook. 
However collecting those preferences is a big pain. There are cheap ways ([1](https://apple.stackexchange.com/questions/195244/concise-compact-list-of-all-defaults-currently-configured-and-their-values) and [2](http://osxdaily.com/2012/01/31/see-all-previously-used-defaults-commands/)) to do it, but they either are not 
exclusive or really that efficient. [@Kevin Suttle](http://kevinsuttle.com/) Did an amazing job curating the most important ones [here](https://github.com/kevinSuttle/macOS-Defaults/tree/suttle).
He also provided [this amazing guide](https://github.com/kevinSuttle/OSXDefaults/blob/master/REFERENCE.md) to refer to as you modify those settings.

## Issues and Contribution 
Feel free to fork and go crazy with this setup. Let me know of any issues that arise. You can report them 
[here](https://github.com/awes0menessInc/dotfiles/issues)!

## Homage to

* [Mathias Bynens](https://github.com/mathiasbynens) and his [OG dotfiles](https://github.com/mathiasbynens/dotfiles)
* [Paul Irish](https://github.com/paulirish) and his [dotfiles repository](https://github.com/paulirish/dotfiles)
* [Sindre Sorhus](https://sindresorhus.com/) and his amazing [Quick-Look Plugins](https://github.com/sindresorhus/quick-look-plugins) and [awesome list](https://github.com/sindresorhus/awesome)
* [Kevin Suttle](http://kevinsuttle.com/) and his [dotfiles repository](https://github.com/kevinSuttle/dotfiles) and [macOS-Defaults project](https://github.com/kevinSuttle/macOS-Defaults), which aims to provide better documentation for [`~/.macos`](https://mths.be/macos)
* [ptb](https://github.com/ptb) and [his _macOS Setup_ repository](https://github.com/ptb/mac-setup)
* [Ben Alman](http://benalman.com/) and his [dotfiles repository](https://github.com/cowboy/dotfiles)
* [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
