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

# adding homebrew to path
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# loading small scripts/ util functions
. $DOTFILES/.small_scripts

# Syntax highlighting in the prompt v
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# # add key binding options and more:
source ~/.github_clones/zsh-edit/zsh-edit.plugin.zsh


#set ctrl-l to wipe screen (and not only scroll)
# bindkey -r "^l"
# zle -N hard_clear
# bindkey "^l" hard_clear


bindkey -r "^R"

# config icon space for exa
export EXA_ICON_SPACING=2

# auto jump with z.lua:
eval "$(lua ~/.github_clones/z.lua/z.lua --init zsh)"

# starship initialize
eval "$(starship init zsh)"

. "$HOME/.cargo/env"


# for when i fuck up 
eval $(thefuck --alias)

# more syntax highlighting configuration
. $DOTFILES/.zsh_highlighting

# setting fzf options
# export FZF_DEFAULT_OPTS='--height 40% --border'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# setting up tab titles
source /home/linuxbrew/.linuxbrew/opt/zinit/zinit.zsh
zinit light trystan2k/zsh-tab-title


# loading aliases 
##### ALWAYS KEEP LAST ###
if [ -f $DOTFILES/.zsh_aliases ]; then
    . $DOTFILES/.zsh_aliases
fi



