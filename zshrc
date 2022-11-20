export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git)

SPACESHIP_PROMPT_ADD_NEWLINE="false"
SPACESHIP_PROMPT_SEPARATE_LINE="false"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="false"
SPACESHIP_PROMPT_PREFIXES_SHOW="true"
SPACESHIP_PROMPT_SUFFIXES_SHOW="true"
SPACESHIP_PROMPT_DEFAULT_PREFIX=" "
SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(time user dir git exit_code char)

# time
SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_COLOR="magenta"

# user
SPACESHIP_USER_SHOW="always" 
SPACESHIP_USER_PREFIX=""
SPACESHIP_USER_COLOR="blue"

# dir
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO="false"
SPACESHIP_DIR_TRUNC_PREFIX="../"
SPACESHIP_DIR_COLOR="white"

# git
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_BRANCH_SUFFIX=""
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""

# aliases
alias ll='ls -l'
alias u='sudo apt-get update'
alias ud='u && sudo apt-get -V dist-upgrade'
alias udk='ud && sudo update-kernel'
alias udkc='sudo apt-repo clean && udk'
alias ara='sudo apt-repo add'
alias art='sudo apt-repo test'
alias arl='apt-repo list'
alias arm='sudo apt-repo rm'
alias agip='u && sudo apt-get -V install'
alias agrp='sudo apt-get -V remove'
alias agar='sudo apt-get -V autoremove'
alias acs='apt-cache search'
alias acwd='apt-cache whatdepends'
alias sstat='systemctl status'
alias sstart='sudo systemctl start'
alias sstop='sudo systemctl stop'
alias ssres='sudo systemctl restart'
alias svim='sudo vim'
alias epu='sudo epm play --update'
alias epua='sudo epm play --update all'
