# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME='simple'
export EDITOR='vim'
export LC_CTYPE='UTF-8'
export LC_ALL='en_US.UTF-8'
export FACTERLIB=~/lib/facter:$FACTERLIB
# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/bin:/sbin:/usr/X11/bin:
alias l='ls -hlAF' # Fancy listing of files and directories
alias grep='grep --color'
alias genpw='~/Dropbox/git/scripts/generate_password.py'
alias ll='ls -la'
alias vi='vim'
alias google.py='~/management-scripts/google-apps/google.py'
alias macvim='open -a MacVim'
alias pushforreview='git push origin HEAD:refs/for/production'
alias ls='gls --color=auto'
alias jhaals='vim /opt/boxen/repo/modules/people/manifests'

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
eval `gdircolors .dircolors`
source /usr/local/bin/virtualenvwrapper_lazy.sh
