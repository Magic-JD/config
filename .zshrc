# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# The fuck
export PATH="$HOME/.local/bin/:$PATH"

export STARSHIP_CONFIG=~/.starship.toml
if [ "$TERMINAL_EMULATOR" = "JetBrains-JediTerm" ]; then
    export STARSHIP_CONFIG=~/.starship-nano.toml
fi;
eval $(thefuck --alias)
# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.                                                                                                                              
# -> this is from oh my zsh might want to add fzf plugin back at some point plugins=(fzf)                                                                                                                                                                           
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=93'
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/fzf-git.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export BAT_THEME="Catppuccin Mocha"
export FZF_DEFAULT_OPTS="--tmux 90% -m --bind 'change:top,tab:toggle-up,btab:toggle-all' --color --ansi \
    --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
    --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
    --color=selected-bg:#45475a \
    --multi"
    export FZF_DEFAULT_COMMAND="fd -t f -c always"
export EZA_CONFIG_DIR="$HOME/.config/eza"

eval "$(zoxide init zsh)"

function cdls() {
    clear -x && z "$@" && eza -a --icons 
}

# Source own .files
source ~/.zshrc_aliases
# If there are non general aliases, source them
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/scripts/start_up.sh ]; then
    ~/scripts/start_up.sh
fi

export PATH=$PATH:~/bin
#for f in ~/bin/*; do source $f; done

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

#
# Sets default editor to vim
export VISUAL=nvim
bindkey -v

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/.cargo/bin

if [ $DISPLAY ]; then;
    (xbanish &)
fi;

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ATAC_MAIN_DIR="~/atac"
export ATAC_KEY_BINDINGS="~/.config/atac/vimbind.toml"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

eval "$(atuin init zsh)"
eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_USER_DEFAULT # Set the cursor to be block in insert mode
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# This must be after sdk man for sdk man to work ;)
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
