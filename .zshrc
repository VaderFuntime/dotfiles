# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/roeyk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Syntax highlighting in the prompt v
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# add key binding options and more:
source ~/.github_clones/zsh-edit/zsh-edit.plugin.zsh

# # for them colors
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
# fi

# export LS_COLORS='fi=37';
# export DIR_COLORS='.*=35';


#set ctrl-l to wipe screen (and not only scroll)
bindkey -r "^l"
bind '^L' clear

# config icon space for exa
export EXA_ICON_SPACING=2

# auto jump with z.lua:
eval "$(lua ~/.github_clones/z.lua/z.lua --init zsh)"

# starship initialize
eval "$(starship init zsh)"

. "$HOME/.cargo/env"

# loading small scripts/ util functions
. ~/.small_scripts

# for when i fuck up 
eval $(thefuck --alias)

# more syntax highlighting configuration
source ~/.zsh-highlighting

# loading aliases always keep last
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi


