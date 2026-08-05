# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.

if [[ $- != *i* ]]; then
  # Shell is non-interactive.  Be done now!
  return
fi

# eval "$(starship init bash)"
#==============================================================================
#                              ||               ||
#                              ||      alias    ||
#                              ||               ||
#==============================================================================
alias ..='cd ..'
alias ...='cd ../..'
alias nnn='nnn -a'
alias tem='curl wttr.in/PIN_Of_area'
alias img='kitty +kitten icat'
alias lznvim='NVIM_APPNAME=lazy_nvim nvim'
# alias scrcpy='SDL_AUDIODRIVER=pipewire scrcpy'
# sudo EDITOR='emacsclient -s straight -t' conf-update /etc/portage

# Put your fun stuff here.
#export PS1="\[\e[35m\]\u@\h\[\e[35m\] \[\e[34m\]\w\[\e[34m\] \[\e[32m\]\\$\n\[\e[0m\]"
#PS1='\[\e[1;33m\]╭──────────────[ \[\e[31m\]\u  \[\e[34m\]\w\[\e[33m\]  ] \n\[\e[33m\]╰────────────>>\[\e[1;0m\] '
#PS1='\[\e[1;33m\]╭──────────────[ \[\e[31m\]\u\[\e[33m\]@\h \[\e[34m\]\w\[\e[33m\] ] \n╰────────────>>\[\e[1;0m\] '

# this runs before every promt
PROMPT_COMMAND='
if sudo -n true 2>/dev/null; then    # check if sudo previledge without passwd prompting
    PS_SYMBOL="#"
else
    PS_SYMBOL="$"
fi

PS1="\n\[\e[0;36m\]╭─\[\e[0m\]\[\e[1;34m\]\u@\h \[\e[0;32m\]\w\n\[\e[0;36m\]╰─\${PS_SYMBOL} \[\e[0m\]"
'

# # ----- command timing -----
# timer_start() {
#     CMD_START_TIME=$(date +%s%N)
# }

# timer_stop() {
#     local end_time=$(date +%s%N)
#     local elapsed=$(( (end_time - CMD_START_TIME) / 1000000 ))
#     if [ $elapsed -ge 1000 ]; then
#         CMD_TIME="$((elapsed / 1000))s"
#     else
#         CMD_TIME="${elapsed}ms"
#     fi
# }

# trap 'timer_start' DEBUG
# PROMPT_COMMAND='timer_stop'

# # ----- prompt -----
# PS1='\n\[\e[1;34m\]\w\[\e[0m\]\n\[\e[2m\]${CMD_TIME}\[\e[0m\] $ '
PS2=' \[\e[35m\]continue\[\e[1;0m\]> '

#==============================================================================
#                              ||               ||
#                              ||      path     ||
#                              ||               ||
#==============================================================================
export PATH="$HOME/.local/bin:$PATH"
export EDITOR='emacsclient -s straight -t'
export VISUAL='emacsclient -s straight -t'

#==============================================================================
#                              ||                               ||
#                              ||              nnn              ||
#                              ||                               ||
#==============================================================================

export NNN_PLUG='f:fzcd;p:preview-tui;c:cdpath;e:gpge;s:gpgs;v:gpgv'
# export # NNN_BMS='d:~/Downloads;c:~/.config;n:~/Mine/Notes;q:~/mine_quarantine;w:~/.config/hypr/hypaper/wallpapers/'
# export NNN_COLORS="2136"
export NNN_PREVIEWIMGPROG=chafa
export NNN_TERMINAL=kitty
# alias ncp="cat ${NNN_SEL:-${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.selection} | tr '\0' '\n'"
# # export CDPATH="$HOME:$HOME/.config:$HOME/.local:/etc/pacman.d"

if [ -f "$HOME/mine/quotes.txt" ]; then
  if command -v lolcat >/dev/null 2>&1; then
    shuf -n 1 "$HOME/mine/quotes.txt" | lolcat
  else
    shuf -n 1 "$HOME/mine/quotes.txt"
  fi
fi

# Explicit shell options
# set +o allexport
# set -o braceexpand
# set -o emacs
# set +o errexit
# set +o errtrace
# set +o functrace
# set -o hashall
# set -o histexpand
# set -o history
# set -o ignoreeof
# set -o interactive-comments
# set +o keyword
# set -o monitor
# set +o noclobber
# set +o noexec
# set +o noglob
# set +o notify
# set +o nounset
# set +o onecmd
# set +o physical
# set -o pipefail
# set +o posix
# set +o privileged
# set +o verbose
# set +o vi
# set +o xtrace

# broot
source /home/wolfer/.config/broot/launcher/bash/br
