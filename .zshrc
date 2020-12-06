case "$OSTYPE" in
  solaris*) OS="SOLARIS" ;;
  darwin*)  OS="OSX" ;;
  linux*)   OS="LINUX" ;;
  bsd*)     OS="BSD" ;;
  msys*)    OS="WINDOWS" ;;
  *)        OS="unknown: $OSTYPE" ;;
esac

exists() {
  command -v "$1" >/dev/null 2>&1
}
upvim(){
  cd ~/
  if [[ $OS == 'OSX' ]]; then
    echo 'nvim:osx'
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-macos.tar.gz
    # https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.bz2
    tar -xf nvim-macos.tar.bz2
    mv ./nvim-osx64/bin/nvim /usr/local/bin/
  fi
  if [[ $OS == 'linux' ]]; then
    echo 'nvim:linux'
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage

  fi
}
upalacritty(){
  cd ~/alacritty
  git pull origin HEAD
  rustup update stable
  cargo build --release
  make app
  if [[ $OS == 'OSX' ]]; then
    cp -r target/release/osx/Alacritty.app /Applications/Alacritty.app
    cd -
  fi
  if [[ $OS == 'linux' ]]; then
    cp -r target/release/alacritty /usr/local/bin/
    cd -
  fi
}
upprezto(){
  cd $ZPREZTODIR
  git pull
  git submodule update --init --recursive
  cd -
}

# RUST verification
if ! exists rustup; then
  # install rust
  if [[ $OS == 'OSX' ]]; then
    echo 'rustup:osx'
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  fi
fi

alias c='git --git-dir=$HOME/.dot/ --work-tree=$HOME'

# # fix perl error on ack.vim
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export BAT_THEME="Monokai Extended"

# Make vim the default editor
export EDITOR="nvim"
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# timestamps for bash history. www.debian-administration.org/users/rossen/weblog/1
# saved for later analysis
HISTTIMEFORMAT='%F %T '
export HISTTIMEFORMAT

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

source ~/.zplug/init.zsh

zplug "bobthecow/git-flow-completion"
zplug "Valiev/almostontop"
zplug "djui/alias-tips"
zplug "arzzen/calc.plugin.zsh"
zplug "akoenig/npm-run.plugin.zsh"
zplug "b4b4r07/enhancd", use:init.sh
zplug "MichaelAquilina/zsh-auto-notify"

zplug load

if zplug check b4b4r07/enhancd; then
  # setting if enhancd is available
  export ENHANCD_FILTER=fzf-tmux
fi

defaults write -g InitialKeyRepeat -int 10

# for file in $HOME/{.exports,.aliases}; do
#   [ -r "$file" ] && source "$file"
# done

# source functions
# for file in $HOME/dotfiles/helpers/*.sh; do
#   [ -r "$file" ] && source "$file"
# done

# Customize to your needs...

alias dd="cd ~/Desktop/"
alias 7b="cd ~/7blazes/git/"
alias zshrc="nvim ~/.zshrc"
alias cls="clear"


alias im='nvim'
alias v='~/nvim-osx64/bin/nvim'
alias stat='gotop -c monokai'

alias irc= 'weechat';

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"



# List only directories
alias lsd='ls -l | grep "^d"'

# Always use color output for `ls`
if [[ "$OSTYPE" =~ ^darwin ]]; then
	alias ls="command ls -G"
else
	alias ls="command ls --color"
	export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
fi
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Shortcuts
alias v="nvim"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"


# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

alias server="history-server ."
alias m="musikcube"


alias mux='TERM=xterm-256color /usr/local/bin/tmuxinator'
alias server='http-server -p 4000 -i true'

alias gitDeleteLocalBranches='git branch | grep -v "master" | xargs git branch -D'
alias gitReset='git checkout -- .'
alias gitUndoMerge='git reset --merge'

alias notify='osascript -e "display notification \"Process finished\" with title \"Done!\""'

 # git functions
function gflowBeforeFinish(){
  curBranch=$(git rev-parse --abbrev-ref HEAD)
  echo "Fetching ${1}..."
  git checkout $1 &>/dev/null
  git pull &>/dev/null
  echo "Switching back to ${curBranch}..."
  git checkout $curBranch &>/dev/null
  echo "Merging ${1} into ${curBranch}..."
  git merge $1
}
function gmm() {
  gflowBeforeFinish master
}
function gmd() {
  gflowBeforeFinish develop
}

alias g="git"
alias gl="git pull"
alias gt="git log --graph --pretty=oneline --abbrev-commit"
alias gb="git branch"
alias gup="git remote update origin --prune"
alias gf="git-flow"
alias gco="git checkout"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gc='git commit -m'
# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"
alias undocommit="git reset --soft HEAD~1"
# Git Status
alias gs='git status'
# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

### Added by the Heroku Toolbelt

export PATH=$HOME:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/.local/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

# if [ "$TERM" = "screen" ] && [ "$HAS_256_COLORS" = "yes" ]
# then
#   export TERM=screen-256color
# fi
# export TERM=screen-256color

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"


if [[ -a ~/.secrets ]]; then
  source ~/.secrets
fi

export FZF_DEFAULT_COMMAND='ag -g ""'

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

export PATH="/usr/local/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

