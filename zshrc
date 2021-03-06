# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/melody/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="fishy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
#export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

#autojump
#[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse docker)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval _$color='%{$terminfo[blod]$fg[${(L)color}]%}'
    eval $color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
FINISH="%{$terminfo[sgr0]%}"
RPROMPT=$(echo "$RED%D %T$FINISH")
PROMPT=$(echo "$BLUE%n@$YELLOW%M:$GREEN%/$_YELLOW>$FINISH ")
PROMPT=$(echo "$BLUE%n:$GREEN%/$_YELLOW>$FINISH ")
export EDITOR=vim

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home
export JRE_HOME=${JAVA_HOME}/jre
#export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export MAVEN_HOME=/Users/melody/env/maven3
export MYSQL_HOME=/usr/local/mysql
#export ANDROID_HOME=/opt/android-sdk
export GOROOT=/usr/local/opt/go/libexec
#export GOPATH=/Users/melody/study/zxdp:/Users/melody/lenovo/goting
#export GOPATH=/Users/melody/study/zxdp:/Users/melody/lenovo/goting
export GOPATH=/Users/melody/study/golang/gosearch
export GRADLE_HOME=/usr/local/bin/gradle-3.5

export GOBIN=/usr/local/opt/go/libexec/bin
export PATH=${MAVEN_HOME}/bin:${MYSQL_HOME}/bin:$PATH:/usr/local/opt/go/libexec/bin:${GOBIN}:/usr/local/sbin:$HOME/.composer/vendor/bin:$GRADLE_HOME/bin:/opt/local/bin:/Users/melody/Library/Android/sdk/platform-tools


export SCALA_HOME=/usr/local/opt/scala
export PATH=$PATH:${SCALA_HOME}/bin

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias sl='ls'

alias svim='sudo vim'
#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles


export PATH=/usr/local/aria2/bin:$PATH:/usr/local/protoc/bin
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
#export PATH="/usr/local/opt/qt@5.7/bin:$PATH"
export FONTCONFIG_PATH=/opt/X11/lib/X11/fontconfig


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/Users/melody/.sdkman"
#[[ -s "/Users/melody/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/melody/.sdkman/bin/sdkman-init.sh"

export CAFFE_ROOT=/Users/melody/study/caffe
export PYTHONPATH=/Users/melody/study/caffe/python:$PYTHONPATH
source /Users/melody/.iterm2_shell_integration.zsh
export PATH="/usr/local/opt/flex/bin:$PATH"
export JETTY_HOME=/Users/melody/Downloads/jetty7
