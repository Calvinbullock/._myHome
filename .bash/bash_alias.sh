# All my bash aliases

# ** Add this to ~/.bashrc
# source ~/bash/.bash_aliases

# Custom system update alias
alias upd="sudo apt update && sudo apt upgrade && flatpak update && sudo snap refresh"

# Tempature sensors
alias temps="watch sensors"

# BASHRC
alias bashrc="vim ~/.bashrc"
alias bashd="cd ~/.bash"
alias basha="vim ~/.bash/bash_aliases"

# git
alias gc="git commit"

# VIM / NEOVIM
alias nim="nvim"
alias vimd="cd ~/.vim/"
alias vimrc="vim ~/.vim/vimrc"
alias nimd="cd ~/.config/nvim"
alias nimrc="nvim ~/.config/nvim/init.lua"

# Universial directory movement
alias ..="cd .."
alias ...="cd ../.."

# Document folder aliaes
alias doc="cd ~/Documents"
alias note="vim ~/Documents/note.txt"
alias inscript="cd ~/Documents/install-scripts/"

alias py="python3"

#******** School winter 2024 alieas
alias winter24="cd ~/Documents/_winter-2024-school-docs/"
alias datastr="cd ~/Documents/_winter-2024-school-docs/dataStruc/"
alias appro="cd ~/Documents/_winter-2024-school-docs/appliedPrograming/"
alias pac="cd ~/Documents/_winter-2024-school-docs/cse-251-student-version/"
alias moddes="cd ~/Documents/_winter-2024-school-docs/modularDesign/"
alias venv="source ~/Documents/_winter-2024-school-docs/cse-251-student-version/.venv/bin/activate"
alias djvenv="source ~/Documents/_winter-2024-school-docs/appliedPrograming/.venv/bin/activate"
alias lsnote="vim ~/Documents/_winter-2024-school-docs/lifeCycles/lifeCyclesNotes.txt"

# Tmux
alias tmuxrc="nvim ~/.tmux.conf"
alias ta="tmux a -t"
alias tl="tmux ls"
alias tk="tmux kill-session -t"
alias tm="tmux new -s"


