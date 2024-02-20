# My bash Prompt
# 	Taken from a reddit post that forked it from stevelosh.
# 	SET UP look for PS1="...." in .bashrc and add source ~/.bash/prompt_bash.sh
# 	Source - https://www.reddit.com/r/commandline/comments/zt6x9/what_are_your_favorite_custom_prompts/
# 	Source - http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
#        
#       BUG curently history can bug out sometimes...
#
### PS1 SETTINGS =======================================================

# show more git info in PS1
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true

# colors
export PS1_USER="\[$(tput bold; tput setaf 5)\]"                    # magenta
export PS1_SYSTEM="\[$(tput bold; tput setaf 3)\]"                  # yellow
export PS1_BG_TEXT="\[$(tput bold; tput setaf 0)\]"                 # background text - grey
export PS1_PWD="\[$(tput setaf 4; tput setaf 38; tput setaf 2)\]"   # Miku Green
export PS1_GIT="\[$(tput setaf 4; tput setaf 4)\]"                  # Blue
export PS1_WHITE="\[$(tput bold; tput setaf 7)\]"                   # white
export PS1_RESET="\[$(tput sgr0)\]"                                 # reset - ??

# not used
# export PS1_PWD="\[$(tput bold; tput setaf 216)\]"                 # current working directory path - pink
# export PS1_GIT="\[$(tput bold; tput setaf 6)\]"                    # git branch - cyan
# export PS1_GREEN="\[$(tput bold; tput setaf 2)\]"                   # not used - green
# export PS1_EXIT_STAT="\[$(tput setaf 1)\]"                          # not used - red

# set PS1
PS1="\n${PS1_USER}\u ${PS1_BG_TEXT}at${PS1_SYSTEM} \h ${PS1_BG_TEXT}in${PS1_PWD} \w ${PS1_GIT}\${GIT_INFO}\
        \n\${EXIT_STAT}${PS1_WHITE}\$${PS1_RESET} "

# function to set PS1
function _bash_prompt(){
    # This check has to be the first thing in the function or the $? will check the last command 
    #       in the script not the command propmt command
    # sets a command exit statues
    if [[ $? -eq 0 ]]; then
        EXIT_STAT="✔️"  # Green "✔️" for success
    else
        EXIT_STAT="❌"  # Red "❌" for failure
    fi

    # git info
    export GIT_INFO=$(git branch &>/dev/null && echo "$(__git_ps1 '%s')")
}

# call _bash_prompt() each time the prompt is refreshed
export PROMPT_COMMAND=_bash_prompt

