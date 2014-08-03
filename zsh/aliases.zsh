# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'
alias yad='cd $yadr'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias du='du -h -d 2'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# vimrc editing
alias ve='vim ~/.vimrc'
alias ye='vim ~/.yadr/vim/after/vimrc.after'

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpol='git pull origin master'
alias gpsopm='git push origin master'
alias gpsh='git push'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias c='rails c' # Rails 3
alias co='script/console --irb=pry' # Rails 2
alias ts='thin start'
alias ms='mongrel_rails start'
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'
# alias todo='open nvalt://find/todo'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Zeus
alias zs='zeus server'
alias zc='zeus console'

# Rspec
alias rs='rspec spec'
alias sr='spring rspec'
alias srgm='spring rails g migration'
alias srdm='spring rake db:migrate'
alias srdt='spring rake db:migrate'
alias srdmt='spring rake db:migrate db:test:prepare'

#Custom Alias
alias ext='cd /Volumes/SumEDGE'
alias vm='ssh vagrant@127.0.0.1 -p 2222'
alias musicdl='/Volumes/SumEDGE/Music/vksearch/vksearch --get-one'
alias hdi='howdoi'
alias h='howdoi'
alias hjs='howdoi javascript'
alias hphp='howdoi php'
alias hnode='howdoi node.js'
alias hpy='howdoi python'
alias hoc='howdoi objective c'
alias hsw='howdoi swift'
alias m='mosh'
alias serve='python3 -m http.server'



#Custom Suffix Aliases
alias -s py=vim
alias -s php=vim
alias -s java=vim
alias -s html=vim
alias -s html=vim
alias -s css=vim
alias -s js=vim
alias -s txt=vim


# spb = sprintly branch - create a branch automatically based on the bug you're working on
alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"
