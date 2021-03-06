parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# so that broken symbolic links can be colored
# prerequisite: `brew install coreutils`
eval $(gdircolors)
alias ls="gls --color=auto"
alias ll="gls -l --color=auto"

# so that there is grep -P
alias grep="ggrep"

# handy shortcuts
alias whereami="curl ipecho.net/plain;echo"
alias ptt1="ssh bbsu@ptt.cc"
alias ptt2="ssh bbsu@ptt2.cc"
alias sub="open -a /Applications/Sublime\ Text.app/"
alias bu="brew update && brew upgrade && brew cleanup"
alias gl="git log -n50 --pretty=format:\"%h%x09%an%x09%ad%x09%s\" --date=short"
alias tf="tail -f"
alias v="vim"

# customize command prompt appearance
export LC_ALL="en_US.UTF-8"
export CLICOLOR=1
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[34m\]\h:\[\033[m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[m\]$ "

# default to vim instead of vi
export EDITOR=vim

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
# Pin MySQL at 5.7 for Rails 4 compatibility
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Java and Android
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
export NODE_PATH="$HOME/.nvm/versions/node/v10.16.3/lib/node_modules"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# specify workspace for Golang and for convenience, reference Go binaries
export GOPATH=$HOME
export PATH=$PATH:$(go env GOPATH)/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
