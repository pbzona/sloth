# Sloth

I don't always use vim...but when I do, I'm too lazy to install plugins to make
it half-decent to work with. This is a script to make things way easier to use.
No extra features, just an easy way to get the plugins I like and the settings
I like them to have.

## Installation

One-line install:

`git clone https://github.com/pbzona/sloth.git ~/lazy-vim && cd sloth && sudo bash install.sh`

I also include the helptags for some of the more complicated plugins, so you can
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

## Super Lazy Mode

Added a script `node.sh` to install NodeJS v6.x so I don't have to look up the
URL every time on a new server. This is excluded from `install.sh` because
maybe I won't want Node every time, but it's still easier than doing it
manually. Thanks for not judging.

## Todo

The plan is to go beyond vim and just make this a single, complete script to give me an
ideal working environment without having to look things up. To be included in
future versions:

- Zsh and .zshrc
- Statusline font support for entirely new workstations
- Add public keys and lock down SSH settings
- Automatic firewall
