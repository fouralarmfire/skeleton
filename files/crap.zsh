alias killds='find ./ -iname .DS_Store -delete'
alias la='\ls -F -a'
alias ll='ls -l'
alias ..='cd ..'
alias ct='ctags -R -f ./.git/tags .'

alias cr='clear && rspec'
alias cbr='clear && bundle exec rspec'
alias macv='open -a MacVim.app'
alias be="bundle exec"

alias t="tig --all"
alias gpc="git pair-commit -v"
alias gc='git commit'
alias gpr="git pull --rebase"
alias gti="git"
alias work="git config user.email 'WORK_EMAIL' && git config user.name 'WORK_USERNAME'"

alias b="bosh"
alias bsoh="bosh"

export PATH="/usr/local/bin:$PATH"
export EDITOR=/usr/bin/vim
export BOSH_USE_BUNDLER=true
case $TERM in
  screen)
    export TERM="screen-256color"
    ;;
esac

alias viber=/opt/viber/Viber
alias rsync="rsync -avz --progress"
alias pyserve="python -m SimpleHTTPServer"
alias mc="mc -b"

