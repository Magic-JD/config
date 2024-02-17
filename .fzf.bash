# Setup fzf
# ---------
if [[ ! "$PATH" == */home/joe/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/joe/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/joe/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/joe/.fzf/shell/key-bindings.bash"
