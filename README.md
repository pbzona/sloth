# Sloth

I don't always use vim...but when I do, I'm too lazy to install plugins to make
it half-decent to work with. This laziness has permeated my life, and Sloth is
the answer I came up with.

Sloth isn't for everyone. In fact, it's not for anyone (except me). It's a script to
install and configure the things I like to have on my servers without looking
anything up or having to remember my favorite settings.
 
## Installation

One-line install for everything:

`git clone https://github.com/pbzona/sloth.git ~/sloth && cd sloth && sudo
bash sloth.sh`

This installs everything for the user you run it as. The `sloth.sh` script
installs everything I normally use. Separate shell scripts are included for
individual components, in case you don't want everything at once.

I also include the helptags for some of the more complicated vim plugins, so you can
access their manuals right away:

- `:help airline`
- `:help nerdtree`
- `:help fugitive`

## Compatibility

Compatible with Debian-based Linux systems only, because who would
use anything else?

## Credits  

Shoutout to developers of the included plugins and themes. It took me four
tries to get my bash script working properly, so I have a ton of respect for
the people that make vim worth using. Included in my preferred configuration:

- [Pathogen](https://github.com/tpope/vim-pathogen)
- [Enhanced JS syntax](https://github.com/pangloss/vim-javascript)
- [Luna colorscheme](https://github.com/notpratheek/vim-luna)
- [Mustache/Handlebars Mode](https://github.com/mustache/vim-mustache-handlebars)
- [Airline](https://github.com/vim-airline/vim-airline)
- [Airline themes](https://github.com/vim-airline/vim-airline-themes)
- [NERDtree](https://github.com/scrooloose/nerdtree)
- [Fugitive](https://github.com/tpope/vim-fugitive)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

## Todo

The plan is to go beyond vim and just make this a single, complete script to give me an
ideal working environment without having to look things up. To be included in
future versions:

- Statusline font support for entirely new workstations
- Add public keys and lock down SSH settings
- Automatic firewall
- Logic for plugin installations to save bandwidth
