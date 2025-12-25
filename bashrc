#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
LS_COLORS=$LS_COLORS:'di=0;95:' ; export LS_COLORS
alias grep='grep --color=auto'
# PS1='[\u@\h \w]\$ '
#   
PS1="\[\e[38;5;54m\]█\[\e[38;5;92m\]█\\[\e[38;5;129m\]█\
\e[38;5;255m\]\e[48;5;165m\] \u@\h \
\e[38;5;165m\]\e[48;5;54m\] \e[38;5;255m\]\w \e[0m\]\
\e[38;5;54m\]\e[0m\]\n➜ "
export DISPLAY=:1
alias vi="nvim"
alias cmatrix="cmatrix -C magenta"

# pnpm
export PNPM_HOME="/home/supra/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
