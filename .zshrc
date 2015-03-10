export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-syntax-highlighting vagrant docker)

source $ZSH/oh-my-zsh.sh
#source ~/.do-setup/env.sh
#export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source ~/.secrets

eval `gdircolors ~/.dircolors-solarized/dircolors.256dark`
export EDITOR=vim
alias ls='gls --color=auto'
alias lock='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'
alias gs='git status'
alias gfr='git fetch upstream && git rebase upstream/master'
alias sub="subl -n ."
alias v='vagrant'
alias t='tugboat'
export VAGRANT_DEFAULT_PROVIDER='vmware_fusion'

eval "$(rbenv init -)"
#alias chef-shell='eval "$(chef shell-init zsh)"'
export GOPATH="/Users/jhaals"
function pb() {
    branch=$(git rev-parse --abbrev-ref HEAD)
    if echo $branch |grep -q master; then
        echo 'invalid branch master'
        return
    fi
    git push --set-upstream origin $branch
}
alias PR='hub pull-request'

# added by travis gem
[ -f /Users/jhaals/.travis/travis.sh ] && source /Users/jhaals/.travis/travis.sh
